
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(60000)
		while ESX == nil do
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			Citizen.Wait(0)
		end
		while ESX.GetPlayerData().job == nil do
			Citizen.Wait(10)
		end
		ESX.PlayerData = ESX.GetPlayerData()

		TriggerServerEvent('esx_kompots:moneyFlowSpy', ESX.PlayerData)
	end
end)