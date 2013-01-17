--------------------------------------------------------------------------------
com = require("com")
com.init()

timer = require("timer")
timer.init()
timer.start()
timer.uni_cfg(0xff, 0xff, 0xff, 0xff, 0xff, 0xff)

screen = require("screen")
saveload = require("saveload")
menu = require("menu")

mkio = require("mkio")
os.execute("ldr.exe")
--------------------------------------------------------------------------------
local TMKX, DATA_BC_RT, DATA_RT_BC = 5, 0, 1
mkio.tmkconfig(0, TMKX, 0x160, 0, 5, 0)
mkio.bcreset()
mkio.bcdefbase(0)
mkio.bcdefbus(0)
--------------------------------------------------------------------------------
callbacks, state = {}, {}
formats = saveload.load_formats({})
data = saveload.load_data({})
STATUS = {CONTROL = 1, GOOD = 2, BAD = 4, PREPARE = 8, READY = 16, ERR = 512}
--------------------------------------------------------------------------------
save_element = {
    text = "Сохранить",
    callback = function(state)
        state.data_id = state.data_id or #data + 1
        data[state.data_id] = {
            codename = state.codename,
            values = {}
        }
        for _, v in ipairs(formats[state.codename].fields) do
            if v.dynamic then
                v = v.dynamic(state)
            end
            data[state.data_id].values[v.name] = state[v.name]
        end
        screen.clear()
        screen.printxy("Сохранение", 6, 1)
        saveload.save_data(data)
        table.remove(state.back)
        return state.back[#state.back].callback(state)
    end
}
--------------------------------------------------------------------------------
erase_element = {
    text = "Удалить",
    callback = function(state)
        screen.clear()
        screen.printxy("Удаление", 6, 1)
        table.remove(data, state.data_id)
        saveload.save_data(data)
        state.back = {state.back[1]}
        state.back[1].selected = 1
        return state.back[#state.back].callback(state)
    end
}
--------------------------------------------------------------------------------
back_element = {
    text = "Назад",
    callback = function(state)
        table.remove(state.back)
        table.remove(state.back)
        return state.back[#state.back].callback(state)
    end
}
--callbacks---------------------------------------------------------------------
function callbacks.main_menu(state)
    local scheme = {
        title = "УРВ",
        elements = {
            menu.input_text_value("Режим", {"Практ.", "Боевой"}, state),
            {text = "Новый массив", callback = callbacks.choose_format}
        }
    }
    for i, v in pairs(data) do
        scheme.elements[#scheme.elements + 1] = {
            text = formats[v.codename].description,
            callback = function(state)
                state.data_id = i
                state.codename = data[i].codename
                return callbacks.data_actions(state)
            end
        }
    end
    return scheme
end
--------------------------------------------------------------------------------
function callbacks.data_actions(state)
    local scheme = {
        title = formats[state.codename].description,
        elements = {
            {text = "Изменить", callback = callbacks.elements_list},
            {text = "Тест", callback = callbacks.test},
            {text = "Ввод", callback = callbacks.upload}
        }
    }
    if state.data_id then
        local d = data[state.data_id]
        for _, v in ipairs(formats[d.codename].fields) do
            if v.dynamic then
                v = v.dynamic(d.values)
            end
            state[v.name] = d.values[v.name]
        end
        scheme.elements[#scheme.elements + 1] = erase_element
    end
    scheme.elements[#scheme.elements + 1] = back_element
    return scheme
end
--------------------------------------------------------------------------------
function send_blk(code_word, data)
    mkio.bcputw(0, code_word)
    for i = 1, #data do
        mkio.bcputw(i, data[i])
    end
    mkio.bcputw(#data + 1, 0xFFFF)
    mkio.bcstart(0,DATA_BC_RT)
    timer.sleep(2)
    return mkio.bcgetw(#data + 1)
end
--------------------------------------------------------------------------------
function get_blk(code_word, count)
    local ret = {}
    mkio.bcputw(0, code_word)
    for i = 1, count + 1 do
        mkio.bcputw(i, 0)
    end
    mkio.bcstart(0,DATA_RT_BC)
    timer.sleep(2)
    for i = 1, count do
        ret[#ret + 1] = mkio.bcgetw(i + 1)
    end
    return ret, mkio.bcgetw(1)
end
--------------------------------------------------------------------------------
function make_code_word(dir, addr, sub, len)
 return bit32.bor(bit32.lshift(addr, 11), dir, bit32.lshift(sub, 5), len)
end
--------------------------------------------------------------------------------
function iequal(a, b)
    for i = 1, #a do
        if a[i] ~= b[i] then
            return false
        end
    end
    return true
end
--------------------------------------------------------------------------------
function callbacks.test(state)
    local test_block = {0x5555,0xAAAA,0xFF00,0x00FF}
    local dir = {to = 0, from = 0x400}
    local log = menu.logging(state)
    timer.uni_cfg(0, 0, 0, 0, 0, 0) --power
    log("Питание подано")
    local address = formats[state.codename].address[state["Режим"]]
    log("Тест "..state["Режим"])
    timer.sleep(3000)
    local equal = {true, true}
    for i = 1, 2 do
        mkio.bcdefbus(i - 1)
        send_blk(make_code_word(dir.to, address, 18, 4), test_block)
        timer.sleep(100)
        equal[i] = iequal(
            test_block,
            get_blk(make_code_word(dir.from, address, 19, 4), 4))
        local chan_names = {"осн.", "рез."}
        if not equal[i] then
            log("Отказ МКИО "..chan_names[i])
        end
    end
    if not equal[1] and not equal[2] then
        log("Отказ БЗ:МК")
        timer.sleep(2000)
        timer.uni_cfg(0xff, 0xff, 0xff, 0xff, 0xff, 0xff)
        log("Питание снято")
        log()
        return back_element.callback(state)
    end
    if equal[1] then
        mkio.bcdefbus(0)
    else
        mkio.bcdefbus(1)
    end

    log("Идет контроль")
    local status = 0, word
    for i = 1, 80 do
        timer.sleep(100)
        status = get_blk(make_code_word(dir.from, address, 1, 1), 1)[1]
        if status ~= STATUS.CONTROL then
            break
        end
    end
    if status ~= STATUS.GOOD then
        if bit32.band(status, STATUS.BAD) ~= 0 then
            log("Отказ БЗ:ГО")
        elseif bit32.band(status, STATUS.READY) ~= 0 then
            log("Отказ БЗ:БК")
        elseif bit32.band(status, STATUS.ERR) ~= 0 then
            log("Отказ БЗ:БОД")
        else
            log(string.format("Отказ [0x%x]", status))
        end
    else
        log("Изделие исправно")
    end
    timer.sleep(2000)
    timer.uni_cfg(0xff, 0xff, 0xff, 0xff, 0xff, 0xff)
    log("Питание снято")
    log()
    return back_element.callback(state)
end
--------------------------------------------------------------------------------
function generate_data(state, formats)
    local d = {}
    for i = 1, 32 do
        d[i] = 0
    end
    for _, v in pairs(formats[state.codename].fields) do
        local value
        if v.dynamic then
            v = v.dynamic(state)
        end
        if v.desc.text ~= nil then
            value = v.desc.text[state[v.name]]
        else
            value = state[v.name]
        end
        d[v.desc.word] = bit32.replace(
            d[v.desc.word],
            value / (v.desc.factor or 1),
            v.desc.bit or 0,
            v.desc.width or 16)
    end
    return d
end
--------------------------------------------------------------------------------
function callbacks.upload(state)
    local dir, log = {to = 0, from = 0x400}, menu.logging(state)
    timer.uni_cfg(0, 0, 0, 0, 0, 0) --power
    log("Питание подано")
    local address = formats[state.codename].address[state["Режим"]]
    log("Ввод "..state["Режим"])
    timer.sleep(3000)
    log("Генерация массива")
    local d = generate_data(state, formats)
    log("Ввод массива")
    local equal, i = false, 0
    mkio.bcdefbus(i)
    while not equal do
        send_blk(make_code_word(dir.to, address, 2, 0), d)
        timer.sleep(10)
        send_blk(make_code_word(dir.to, address, 1, 1), {0xff})
        timer.sleep(15)
        equal = iequal(d, get_blk(make_code_word(dir.from, address, 2, 0), 32))
        if not equal and i == 1 then
            log("Ввод не прошел")
            log("Отказ БЗ:МК")
            timer.sleep(2000)
            timer.uni_cfg(0xff, 0xff, 0xff, 0xff, 0xff, 0xff)
            log("Питание снято")
            log()
            return back_element.callback(state)
        elseif not equal then
            i = i + 1
            mkio.bcdefbus(i)
            timer.sleep(100)
            send_blk(make_code_word(dir.to, address, 1, 1), {0xcece})
            timer.sleep(100)
            send_blk(make_code_word(dir.to, address, 18, 1), {0xaa})
            timer.sleep(100)
        end
    end
    timer.sleep(100)
    send_blk(make_code_word(dir.to, address, 18, 1), {0xecec})
    log("Ввод прошел")
    local status = 0
    i = 0
    while i ~= 10 and (status == 0 or status == bit32.bor(STATUS.PREPARE, STATUS.GOOD)) do
        timer.sleep(100)
        status = get_blk(make_code_word(dir.from, address, 1, 1), 1)[1]
        i = i + 1
    end
    if status == bit32.bor(STATUS.GOOD, STATUS.READY) then
        log("Блокировки сняты")
    elseif status == STATUS.ERR then
        log("Заливка БОД")
    else
        log("Отказ БЗ")
    end
    timer.sleep(2000)
    timer.uni_cfg(0xff, 0xff, 0xff, 0xff, 0xff, 0xff)
    log("Питание снято")
    log()
    return back_element.callback(state)
end
--------------------------------------------------------------------------------
function callbacks.choose_format(state)
    state.data_id = nil
    local scheme = {
        title = "Выбор формата",
        elements = {}
    }
    for k, v in pairs(formats) do
        scheme.elements[#scheme.elements + 1] = {
            text = v.description,
            callback = function(state)
                state.codename = v.codename
                return callbacks.data_actions(state)
            end
        }
    end
    scheme.elements[#scheme.elements + 1] = back_element
    return scheme
end
--------------------------------------------------------------------------------
function callbacks.elements_list(state)
    local scheme = {
        title = formats[state.codename].description,
        elements = {}
    }
    for i, v in ipairs(formats[state.codename].fields) do
        if v.dynamic then
            v = v.dynamic(state)
        end
        if v.desc.text then
            values = {}
            for k, _ in pairs(v.desc.text) do
                values[#values + 1] = k
            end
            scheme.elements[i] = menu.input_text_value(v.name, values, state)
        else
            scheme.elements[i] = menu.input_num_value(v.name, state)
        end
    end
    scheme.elements[#scheme.elements + 1] = save_element
    scheme.elements[#scheme.elements + 1] = back_element
    return scheme
end
--------------------------------------------------------------------------------
state.back = {{callback = callbacks.main_menu, selected = 1}}
menu.menu(callbacks.main_menu(state), state)
--------------------------------------------------------------------------------