ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('nightvision', function(source)
	TriggerClientEvent('esx_gear:nightvision', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('nightvision', 1)
end)

ESX.RegisterUsableItem('kyslikovamaska', function(source)
	TriggerClientEvent('esx_gear:kyslikovamaska', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('kyslikovamaska', 1)
end)

ESX.RegisterUsableItem('thermalvision', function(source)
	TriggerClientEvent('esx_gear:thermalvision', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('thermalvision', 1)
end)
