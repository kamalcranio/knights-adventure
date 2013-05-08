-- This is nothing but a way that i created to teast/manage the items in the "bag"
-- If you pretend to clean the invent_actions.lua file, you shall NEVER forget to type "require("itemnames")" right after
-- you clean it, so it won't crash by not having a important function.
function wee()
actions = io.open("invent_actions.lua", "a+")
io.write ("Type the action (Lua style): ")
action = io.read()
if action == "close" then
actions:close()
os.exit()
elseif action == "clean" then
actions:close()
actions = io.open("invent_actions.lua", "w")
actions:close()
wee()
end
actions:write(action)
actions:close()
wee()
end
wee()
