function onStartup()
	dantaFunctions()
	if dantasystem.chargespell.enable == true then
		parseMonsterEvents(dantasystem.chargespell.monstersEvents)
	end
return true
end

function onShutdown()
	os.remove("data/dantasystem/file5.lua")
return true
end