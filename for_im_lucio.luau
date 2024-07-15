if isfile and not isfile('vape/NewMainScript.lua') then return lplr.Kick(lplr, 'install render first :skul:') end; 
if shared.VapeExecuted then return end;
return loadfile('vape/NewMainScript.lua')()
