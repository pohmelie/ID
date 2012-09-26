--------------------------------------------------------------------------------
local M = {}
--------------------------------------------------------------------------------
function M.print(smth, ru)
    ru = ru ~= false
    if type(smth) == "table" then
        for _, v in pairs(smth) do
            M.print(v, ru)
        end
    elseif type(smth) == "string" then
        M.print({string.byte(smth, 1, #smth)}, ru)
    elseif type(smth) == "number" then
        if ru and smth >= 192 then
            smth = smth - 32
        end
        com.send(smth)
    end
end
--------------------------------------------------------------------------------
function M.clear()
    M.print({0x12, 0x0e, 0x19, 0x0c}, false)
end
--------------------------------------------------------------------------------
function M.gotoxy(x, y)
    M.print({0x1b, y * 20 + x}, false)
end
--------------------------------------------------------------------------------
function M.printxy(smth, x, y, ru)
    if x and y then
        M.gotoxy(x, y)
    end
    M.print(smth, ru)
end
--------------------------------------------------------------------------------
return M
--------------------------------------------------------------------------------