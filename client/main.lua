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
    TriggerEvent("skinchanger:getSkin", function(skin)
		if skin.sex == 0 then
			skin.glasses_1 = 26
			skin.tshirt_1 = 179
		else
			skin.glasses_1 = ?
			skin.tshirt_1 = ?
		end        
		skin.glasses_2 = 0
		skin.tshirt_2 = 0
		TriggerEvent("skinchanger:loadSkin", skin)
	end)
			
			ESX.ShowNotification(_U('usedoxygen') .. '%.')
			Citizen.Wait(100000)
			ESX.ShowNotification(_U('vyprazdnovani', '~y~', '50') .. '%.')
			Citizen.Wait(50000)
			ESX.ShowNotification(_U('vyprazdnovani', '~o~', '25') .. '%.')
			Citizen.Wait(50000)
			ESX.ShowNotification(_U('vyprazdnovani', '~r~', '0') .. '%.')
			
			SetPedDiesInWater(PlayerPedId(), true)
			TriggerEvent("skinchanger:getSkin", function(skin)
				skin.glasses_1 = 0
				skin.glasses_2 = 0
				skin.tshirt_1 = 0
				skin.tshirt_2 = 0
				TriggerEvent("skinchanger:loadSkin", skin)
			end)
		end)
	end)
end)
--nightvision--
RegisterNetEvent('esx_gear:nightvision')
AddEventHandler('esx_gear:nightvision', function()
	TriggerEvent("skinchanger:getSkin", function(skin)
		if skin.sex == 0 then
			skin.helmet_1 = 147
		else
			skin.helmet_1 = ?
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
			skin.helmet_1 = 159
		else
			skin.helmet_1 = ?
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
