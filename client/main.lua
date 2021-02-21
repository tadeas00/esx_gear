ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
--kyslíkovka--
RegisterNetEvent('esx_gear:kyslikovamaska')
AddEventHandler('esx_gear:kyslikovamaska', function()
    local playerPed = GetPlayerPed(-1)
    local coords = GetEntityCoords(playerPed)
    local boneIndex = GetPedBoneIndex(playerPed, 12844)
    local boneIndex2 = GetPedBoneIndex(playerPed, 24818)
    ESX.Game.SpawnObject('p_s_scuba_mask_s', {
		x = coords.x,
		y = coords.y,
		z = coords.z - 3
	}, function(object)
		ESX.Game.SpawnObject('p_s_scuba_tank_s', {
			x = coords.x,
			y = coords.y,
			z = coords.z - 3
		}, function(object2)
			AttachEntityToEntity(object2, playerPed, boneIndex2, -0.30, -0.22, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			AttachEntityToEntity(object, playerPed, boneIndex, 0.0, 0.0, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			SetPedDiesInWater(playerPed, false)
			
			ESX.ShowNotification(_U('usedoxygen') .. '%.')
			Citizen.Wait(100000)
			ESX.ShowNotification(_U('vyprazdnovani', '~y~', '50') .. '%.')
			Citizen.Wait(50000)
			ESX.ShowNotification(_U('vyprazdnovani', '~o~', '25') .. '%.')
			Citizen.Wait(50000)
			ESX.ShowNotification(_U('vyprazdnovani', '~r~', '0') .. '%.')
			
			SetPedDiesInWater(playerPed, true)
			DeleteObject(object)
			DeleteObject(object2)
			ClearPedSecondaryTask(playerPed)
		end)
	end)
end)
--nightvision--
RegisterNetEvent('esx_gear:nightvision')
AddEventHandler('esx_gear:nightvision', function()
	TriggerEvent("skinchanger:getSkin", function(skin)
		if skin.sex == 0 then
			skin.helmet = 147
		else
			skin.helmet_1 = 146
		end        
		skin.helmet_2 = 0
		TriggerEvent("skinchanger:loadSkin", skin)
	end)
	SetNightvision(true)

	ESX.ShowNotification(_U('nightvision') .. '%.')
	Citizen.Wait(50000)
	ESX.ShowNotification(_U('vybijeni', '~y~', '50') .. '%.')
	Citizen.Wait(25000)
	ESX.ShowNotification(_U('vybijeni', '~o~', '25') .. '%.')
	Citizen.Wait(25000)
	ESX.ShowNotification(_U('vybijeni', '~r~', '0') .. '%.')

	SetNightvision(false)
	TriggerEvent("skinchanger:getSkin", function(skin)
		skin.helmet_1 = -1
		skin.helmet_2 = 0
		TriggerEvent("skinchanger:loadSkin", skin)
	end)

end)
--thermalvision--
RegisterNetEvent('esx_gear:thermalvision')
AddEventHandler('esx_gear:thermalvision', function()
	TriggerEvent("skinchanger:getSkin", function(skin)
		if skin.sex == 0 then
			skin.helmet = 159
		else
			skin.helmet_1 = 158
		end        
		skin.helmet_2 = 0
		TriggerEvent("skinchanger:loadSkin", skin)
	end)
	SetSeethrough(true)

	ESX.ShowNotification(_U('thermalvision') .. '%.')
	Citizen.Wait(500000)
	ESX.ShowNotification(_U('vybijeni', '~y~', '50') .. '%.')
	Citizen.Wait(25000)
	ESX.ShowNotification(_U('vybijeni', '~o~', '25') .. '%.')
	Citizen.Wait(25000)
	ESX.ShowNotification(_U('vybijeni', '~r~', '0') .. '%.')

	SetSeethrough(false)
	TriggerEvent("skinchanger:getSkin", function(skin)
		skin.helmet_1 = -1
		skin.helmet_2 = 0
		TriggerEvent("skinchanger:loadSkin", skin)
	end)
end)	
