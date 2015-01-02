function parseMonsterEvents(events)
local mxml = io.open("data/monster/monsters.xml", "r")
local number = 0
for i in mxml:read("*a"):gmatch("<monster (.-)/>") do
local file = i:match('file.-=.-"(.-)"')
local ofile = io.open("data/monster/".. file, "r")
local rfile = ofile:read("*a")
ofile:close()
if rfile:match('<script>') then
for i = 1, #events do
if not(rfile:match('name="'..events[i]..'"')) then
rfile = rfile:gsub('<script>','<script><event name="'..events[i]..'"/>')
local ofile = io.open("data/monster/".. file, "w")
ofile:write(rfile)
ofile:close()
number = number + 1
end
end
else
for i = 1, #events do
rfile = rfile:gsub('</monster>','<script><event name="'..events[i]..'"/></script></monster>')
local ofile = io.open("data/monster/".. file, "w")
ofile:write(rfile)
ofile:close()
number = number + 1
end
end
end
print("Monsters editados: " .. number)
end

function reverseTable(tab)
local size = #tab
local newTable = {}
for i, v in ipairs(tab) do
newTable[size-i+1] = v
end
return newTable
end

function firstToUpper(str)
str = str:gsub("%p%s%l", string.upper)
return (str:gsub("^%l", string.upper))
end

function getLuaFunctions()
local str = ""
for f,k in pairs(_G) do
if type(k) == 'function' then
str = str..f..','
elseif type(k) == 'table' then
for d,o in pairs(k) do
if type(o) == 'function' then
if f ~= '_G' and d ~= "_G" and f ~= 'package' then
str = str..f.."."..d..','
end
elseif type(o) == 'table' then
for m,n in pairs(o) do
if type(n) == 'function' then
if d == "_M" and m ~= "_M" and f ~= "_G" and f ~= 'package' then
str = str..f.."."..m..","
elseif f ~= '_G' and m ~= "_G" and d ~= "_G" and f ~= 'package' then
str = str..f.."."..d..'.'..m..','
end
elseif type(n) == 'table' then
for x,p in pairs(n) do
if type(p) == 'function' then
if m == "_M" and d ~= "_M" and f ~= "_G" and f ~= 'package' then
str = str..f.."."..d..'.'..x..','
elseif m == "_M" and d == "_M" and f ~= "_G" and f ~= 'package' then
str = str..f.."."..x..','
elseif m ~= "_M" and d == "_M" and f ~= "_G" and f ~= 'package' then
str = str..f..'.'..m..'.'..x..','
elseif f ~= '_G' and m ~= "_G" and d ~= "_G" and f ~= 'package' then
str = str..f.."."..d..'.'..m..'.'..x..','
end
end
end
end
end
end
end
end
end
return string.explode(str,',')
end

function dantaSecure()
if getConfigValue('dantarrix') == true then
if dantaCheckTalk() then
if dantaCheckPublicity() then
if dantaCheckLib() then 
dofile("data/dantasystem/file5.lua")
return true
end
end
end
end
return false
end

function dantaFunctions()
infile = io.open("data/dantasystem/file4.lua", "r")
instr = infile:read("*a")
instr = dantaDecrypt(instr)
instr = dantaParseFunctions(instr)
infile:close()
outfile = io.open("data/dantasystem/file5.lua", "w")
outfile:write(instr)
outfile:close()
return dofile("data/dantasystem/file5.lua")
end

function dantaParseFunctions(text)
local k = getLuaFunctions()
for i=1,#k do
instr = instr:gsub(k[i]:lower(), k[i])
end
for m=1,#dantaFuncName do
instr = instr:gsub(dantaFuncName[m]:lower(), dantaFuncName[m])
end
return instr
end

function dantaCheckTalk()
local ruta
local final = false
local talkxml = io.open("data/talkactions/talkactions.xml", "r"):read("*all")
for i in talkxml:gmatch("<talkaction (.-)/>") do
if i:match('words="/danta"') and i:match('event="script"') then
ruta = i:match('value.-=.-"(.-)"')
ruta = "data/talkactions/scripts/".. ruta
ruta = io.open(ruta, "r")
ruta = ruta:read("*all")
ruta = ruta:lower()
ruta = dantaEncrypt(ruta)
confirmation = io.open("data/dantasystem/file1.lua", "r")
confirmation = confirmation:read("*all")
confirmation = confirmation:lower()
if ruta == confirmation then
final = true
end
end
end	
return final
end

function dantaCheckPublicity()
local ruta
local final = false
local globalxml = io.open("data/globalevents/globalevents.xml", "r"):read("*all")
for i in globalxml:gmatch("<globalevent (.-)/>") do
if i:match('name="DantaPublicity"') and i:match('event="script"') then
ruta = i:match('value.-=.-"(.-)"')
ruta = "data/globalevents/scripts/".. ruta
ruta = io.open(ruta, "r")
ruta = ruta:read("*all")
ruta = ruta:lower()
ruta = dantaEncrypt(ruta)
confirmation = io.open("data/dantasystem/file2.lua", "r")
confirmation = confirmation:read("*all")
confirmation = confirmation:lower()
if ruta == confirmation then
final = true
end
end
end
return final
end

function dantaCheckLib()
local final = false
ruta = dantaEncrypt(io.open("data/lib/777-dantasystem.lua", "r"):read("*all"):lower())
confirmation = io.open("data/dantasystem/file3.lua", "r"):read("*all"):lower()
if ruta == confirmation then
final = true
end
return final
end

function dantaDecrypt(text)
local t = reverseTable(dantaKey)
for _, k in ipairs(t) do
text = text:gsub(k[2], k[1])
end
return text
end

function dantaEncrypt(text)
for k = 1, #dantaKey do
text = text:gsub(dantaKey[k][1], dantaKey[k][2])
end
return text
end

dantaKey = {
{'z','!'},
{'y','z'},
{'x','y'},
{'w','x'},
{'v','w'},
{'u','v'},
{'t','u'},
{'s','t'},
{'r','s'},
{'q','r'},
{'p','q'},
{'o','p'},
{'n','o'},
{'m','n'},
{'l','m'},
{'k','l'},
{'j','k'},
{'i','j'},
{'h','i'},
{'g','h'},
{'f','g'},
{'e','f'},
{'d','e'},
{'c','d'},
{'b','c'},
{'a','b'}
}