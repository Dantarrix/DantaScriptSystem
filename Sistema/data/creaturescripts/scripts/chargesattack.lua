function onStatsChange(cid, attacker, type, combat, value)
if dantaSecure() then
if isPlayer(attacker) then
dantaChargesAttack(cid, attacker, type, value)
end
end
return true
end