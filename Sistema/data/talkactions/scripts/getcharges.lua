function onSay(cid, words, param)
if dantaSecure() then
return dantaChargesGet(cid) and true
else
return true
end
end