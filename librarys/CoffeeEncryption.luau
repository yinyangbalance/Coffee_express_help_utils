local isint
local ifisint
local notisint
local flintisim
local solara
local aurora
local other
local wave
local isintotherisintissim
local usisisinttinsinism
-- MAIN --
local function encode(str)
    return (str:gsub('.', function(c)
        return string.format('%02X', string.byte(c))
    end))
end

local function decode(str)
    local hex = str:gsub('..', function(cc)
        return string.char(tonumber(cc, 16))
    end)
    return hex
end
