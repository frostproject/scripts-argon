local process = require("@lune/process")

local args = table.clone(process.args)
local ok, _ = require("./patched_sync_config")(table.remove(args, 1), args, { writeToFile = true })
if not ok then
   return process.exit(1)
end
