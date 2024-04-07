ESX = nil
Citizen.CreateThread(function() 
	while ESX == nil do 
		ESX = exports["es_extended"]:getSharedObject()
		Citizen.Wait(1) 
	end 
		PlayerData = ESX.GetPlayerData() 
end) 


function lightbleeding(ped)
    SetEntityHealth(ped,GetEntityHealth(ped)-2)
    SetPedToRagdoll(ped, 1000, 1000, 3)
    --ESX.ShowNotification("Silně Krvácíte")
    exports['mythic_notify']:SendAlert('error', "Krvácíš")
    StartScreenEffect('FadeOut', 0, true)
    StartScreenEffect('SwitchShortTrevorIn', 0, true)
    SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
    Citizen.Wait(15000)
end

function stopbleed(ped)
    effect = false
    SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
end


RegisterCommand("bleedingtest", function()
    SetEntityHealth(GetPlayerPed(-1),125)

end)

function bleedingoff(ped)
    effect = false
    StopScreenEffect('SwitchShortTrevorIn')
    SetPlayerHealthRechargeMultiplier(PlayerId(), 1.0)
end
 
local effect = true
