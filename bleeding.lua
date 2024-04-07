


Citizen.CreateThread(function()
while true do
Citizen.Wait(700)
local player = GetPlayerPed(-1)
local Health = GetEntityHealth(player)
local sex = GetEntityMaxHealth(player)  
    
    if sex == 200 and Health < 140 or sex == 175 and Health < 130 then
        lightbleeding(player)
     
        elseif sex == 200 and Health > 141 or sex == 175 and Health > 131 then
            stopbleed(player)
        elseif sex == 200 and Health > 143 or sex == 175 and Health > 133 then
            stopbleed(player)
    end
end
end)