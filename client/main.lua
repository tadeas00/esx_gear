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
		SetPedDiesInWater(PlayerPedId(), false)
		local oxygen

		if skin.sex == 0 then
			oxygen = Config.SkinId.maleDiving
		else
			oxygen = Config.SkinId.femaleDiving
		end        

		TriggerEvent("skinchanger:loadClothes", skin, oxygen)
	end)

			ESX.ShowNotification(_U('usedoxygen') .. '%.')
			Citizen.Wait(100000)
			ESX.ShowNotification(_U('vyprazdnovani', '~y~', '50') .. '%.')
			Citizen.Wait(5000)
			ESX.ShowNotification(_U('vyprazdnovani', '~o~', '25') .. '%.')
			Citizen.Wait(5000)
			ESX.ShowNotification(_U('vyprazdnovani', '~r~', '0') .. '%.')
			
			SetPedDiesInWater(PlayerPedId(), true)
			TriggerEvent("skinchanger:getSkin", function(skin)
				oxygen = Config.SkinId.oxygenrest
				TriggerEvent("skinchanger:loadClothes", skin, oxygen)
			end)
end)
--nightvision--
RegisterNetEvent('esx_gear:nightvision')
AddEventHandler('esx_gear:nightvision', function()
	TriggerEvent("skinchanger:getSkin", function(skin)
		local nightvision

		if skin.sex == 0 then
			nightvision = Config.SkinId.maleNight
		else
			nightvision = Config.SkinId.femaleNight
		end        
		
		TriggerEvent("skinchanger:loadClothes", skin, nightvision)
	end)
	SetNightvision(true)

	ESX.ShowNotification(_U('nightvision') .. '%.')
	Citizen.Wait(5000)
	ESX.ShowNotification(_U('vybijeni', '~y~', '50') .. '%.')
	Citizen.Wait(2500)
	ESX.ShowNotification(_U('vybijeni', '~o~', '25') .. '%.')
	Citizen.Wait(2500)
	ESX.ShowNotification(_U('vybijeni', '~r~', '0') .. '%.')

	SetNightvision(false)
	TriggerEvent("skinchanger:getSkin", function(skin)
		nightvision = Config.SkinId.Nightrest
		TriggerEvent("skinchanger:loadClothes", skin, nightvision)
	end)

end)
--thermalvision--
RegisterNetEvent('esx_gear:thermalvision')
AddEventHandler('esx_gear:thermalvision', function()
	TriggerEvent("skinchanger:getSkin", function(skin)
		local thermal

		if skin.sex == 0 then
			thermal = Config.SkinId.maleThermal
		else
			thermal = Config.SkinId.femaleThermal
		end        
		
		TriggerEvent("skinchanger:loadClothes", skin, thermal)
	end)
	SetSeethrough(true)

	ESX.ShowNotification(_U('thermalvision') .. '%.')
	Citizen.Wait(5000)
	ESX.ShowNotification(_U('vybijeni', '~y~', '50') .. '%.')
	Citizen.Wait(2500)
	ESX.ShowNotification(_U('vybijeni', '~o~', '25') .. '%.')
	Citizen.Wait(2500)
	ESX.ShowNotification(_U('vybijeni', '~r~', '0') .. '%.')

	SetSeethrough(false)
	TriggerEvent("skinchanger:getSkin", function(skin)
		thermal = Config.SkinId.thermalrest
		TriggerEvent("skinchanger:loadClothes", skin, thermal)
	end)
end)	
