--------------------------------------------------------------------------------
local formats, data
local M = {}
--------------------------------------------------------------------------------
local function get_formats(f)
    if f.codename then
        formats[f.codename] = f
    else
        print("Bad format: there is no 'codename' field")
    end
end
--------------------------------------------------------------------------------
local function get_data(d)
    if d.codename then
        data[#data + 1] = d
    else
        print("Bad data: there is no 'codename' field")
    end
end
--------------------------------------------------------------------------------
function M.load_formats(store)
    entry, formats = get_formats, store
    dofile("format.lua")
    return store
end
--------------------------------------------------------------------------------
function M.load_data(store)
    entry, data = get_data, store
    dofile("data.lua")
    return store
end
--------------------------------------------------------------------------------
local function repr(x)
    if type(x) == "string" then
        return "\""..x.."\""
    else
        return tostring(x)
    end
end
--------------------------------------------------------------------------------
function M.save_data(store)
    local fout = io.open("data.lua", "w")
    for _, v in ipairs(store) do
        fout.write(fout,
                   "entry{\n    codename = ",
                   repr(v.codename),
                   ",\n    values = {\n")
        for k, val in pairs(v.values) do
            fout.write(fout, "        [", repr(k), "] = ", repr(val), ",\n")
        end
        fout.write(fout, "    }\n}\n")
    end
    fout.flush(fout)
    fout.close(fout)
end
--------------------------------------------------------------------------------
return M
--------------------------------------------------------------------------------