function onStatsChange(cid, attacker, type, combat, value)
if dantaSecure() then
dantaChargesLose(cid, type)
else
return true
end
end