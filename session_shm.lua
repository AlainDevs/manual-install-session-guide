-- @module session_shm
local _M = {}

local session = require "resty.session"

session.init({
        -- audience = "my-application",
        secret = "YourOwnKey",
        storage = "shm",
})

_M.set_obj = function()
    local user = session.new()
    user:set_subject("OpenResty Fan")
    local ok, err = user:save()
    return ok or err
end

_M.get_obj = function()
    local user = session.start()
    return user:get_subject() or "Anonymous"
end

return _M
