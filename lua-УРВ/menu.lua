--------------------------------------------------------------------------------
local M = {}
local key = {left = 23, right = 22, ok = 31, cancel = 30}
local digits = {
    [38] = 0,
    [37] = 1,
    [36] = 2,
    [35] = 3,
    [29] = 4,
    [28] = 5,
    [27] = 6,
    [21] = 7,
    [20] = 8,
    [19] = 9
}
--------------------------------------------------------------------------------
local function keydown()
    while com.receive() ~= 95 do end
    return com.receive()
end
--------------------------------------------------------------------------------
function M.menu(scheme, state)
    local selected = state.back[#state.back].selected or 1
    while true do
        screen.clear()
        if scheme.title then
            screen.printxy(scheme.title, 2, 0)
        end
        local index = math.floor((selected - 1) / 3) * 3 + 1
        for i = index, math.min(index + 2, #scheme.elements) do
            screen.printxy(scheme.elements[i].text, 1, i - index + 1)
        end
        while true do
            screen.printxy("#", 0, ((selected - 1) % 3) + 1)
            local part = string.format("%s/%s", selected, #scheme.elements)
            screen.printxy(part, 20 - #part, 0)
            pressed = keydown()
            if pressed == key.left then
                if selected == 1 then
                    selected = #scheme.elements
                    break
                end
                screen.printxy(" ", 0, ((selected - 1) % 3) + 1)
                selected = selected - 1
                if (selected - 1) % 3 == 2 then
                    break
                end
            elseif pressed == key.right then
                if selected == #scheme.elements then
                    selected = 1
                    break
                end
                screen.printxy(" ", 0, ((selected - 1) % 3) + 1)
                selected = selected + 1
                if (selected - 1) % 3 == 0 then
                    break
                end
            elseif pressed == key.ok and scheme.elements[selected].callback then
                state.back[#state.back].selected = selected
                state.back[#state.back + 1] = {
                    callback = scheme.elements[selected].callback,
                    selected = 1
                }
                return M.menu(scheme.elements[selected].callback(state), state)
            elseif pressed == key.cancel and #state.back > 1 then
                table.remove(state.back)
                return M.menu(state.back[#state.back].callback(state), state)
            end
        end
    end
end
--------------------------------------------------------------------------------
function M.input_num_value(name, state)
    state[name] = state[name] or 0
    return {
        text = string.format("%-9s = %-7s", name, state[name]),
        callback = function(state)
            local dig = 0
            local value = 0
            screen.clear()
            screen.printxy(string.format("%-9s = ", name), 1, 1)
            while true do
                screen.printxy("_", 13 + dig, 1)
                pressed = keydown()
                if digits[pressed] then
                    value = value * 10 + digits[pressed]
                    dig = dig + 1
                    if dig > 5 then
                        screen.printxy("       ", 13, 1)
                        value, dig = 0, 0
                    else
                        screen.printxy(
                            string.format("%s", digits[pressed]),
                            13 + dig - 1,
                            1)
                    end
                elseif pressed == key.ok or pressed == key.cancel then
                    if pressed == key.ok then
                        state[name] = value
                    end
                    table.remove(state.back)
                    return state.back[#state.back].callback(state)
                end
            end
        end
    }
end
--------------------------------------------------------------------------------
function M.input_text_value(name, values, state)
    state[name] = state[name] or values[1]
    local sel
    for i = 1, #values do
        if state[name] == values[i] then
            sel = i
            break
        end
    end
    return {
        text = string.format("%-9s = %-7s", name, state[name]),
        callback = function(state)
            state.back[#state.back].selected = sel
            local scheme = {
                title = name,
                elements = {}
            }
            for i = 1, #values do
                scheme.elements[i] = {
                    text = values[i],
                    callback = function(state)
                        table.remove(state.back)
                        state[name] = values[state.back[#state.back].selected]
                        table.remove(state.back)
                        return state.back[#state.back].callback(state)
                    end
                }
            end
            return scheme
        end
    }
end
--------------------------------------------------------------------------------
function M.logging(state)
    state.log = {}
    state.back[#state.back + 1] = 0
    local function redraw(top)
        top = top or #state.log
        local from = math.min(
            math.max(top - 3, 1),
            math.max(#state.log - 3, 1))
        local to = math.min(from + 3, #state.log)
        screen.clear()
        for i = from, to do
            screen.printxy(state.log[i], 1, i - from)
        end
        return to
    end
    return coroutine.wrap(function(msg)
        while msg ~= nil do
            state.log[#state.log + 1] = msg
            redraw()
            msg = coroutine.yield()
        end
        local selected = #state.log
        while true do
            selected = redraw(selected)
            pressed = keydown()
            if pressed == key.left then
                selected = selected - 1
            elseif pressed == key.right then
                selected = selected + 1
            elseif pressed == key.ok or pressed == key.cancel then
                return
            end
        end
    end)
end
--------------------------------------------------------------------------------
return M
--------------------------------------------------------------------------------