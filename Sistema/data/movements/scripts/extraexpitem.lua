function onDeEquip(cid, item, slot)
if dantaSecure() then
dantaItemExpDeEquip(cid)
end
return true
end

function onEquip(cid, item, slot)
if dantaSecure() then
dantaItemExpEquip(cid)
end
return true
end