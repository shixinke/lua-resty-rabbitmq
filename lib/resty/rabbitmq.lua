local tcp       = ngx.socket.tcp
local strlen    = string.len
local strsub    = string.sub
local strmatch  = string.match
local tabconcat = table.concat

local _M = {}

_M.VERSION = "0.05"

local mt = {
    __index = _M,
}

function _M.new(self)
    local sock, err = tcp()
    if not sock then
        return nil, err
    end
    return setmetatable({sock = sock}, mt)
end

return _M
