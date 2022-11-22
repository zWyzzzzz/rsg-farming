local QRCore = exports['qr-core']:GetCoreObject()

-- use cornseed
QRCore.Functions.CreateUseableItem("cornseed", function(source, item)
    local src = source
	TriggerClientEvent("rsg-farming:client:planting", src, item.name, `CRP_CORNSTALKS_CB_SIM`, `CRP_CORNSTALKS_CA_SIM`, `CRP_CORNSTALKS_AB_SIM`)
end)

-- use sugarseed
QRCore.Functions.CreateUseableItem("sugarseed", function(source, item)
    local src = source
	TriggerClientEvent("rsg-farming:client:planting", src, item.name, `CRP_SUGARCANE_AA_SIM`, `CRP_SUGARCANE_AB_SIM`, `CRP_SUGARCANE_AC_SIM`)
end)

-- use tobaccoseed
QRCore.Functions.CreateUseableItem("tobaccoseed", function(source, item)
    local src = source
	TriggerClientEvent("rsg-farming:client:planting", src, item.name, `CRP_TOBACCOPLANT_AA_SIM`, `CRP_TOBACCOPLANT_AB_SIM`, `CRP_TOBACCOPLANT_AC_SIM`)
end)

-- use carrotseed
QRCore.Functions.CreateUseableItem("carrotseed", function(source, item)
    local src = source
	TriggerClientEvent("rsg-farming:client:planting", src, item.name, `CRP_CARROTS_AA_SIM`, `CRP_CARROTS_AA_SIM`, `CRP_CARROTS_AA_SIM`)
end)

-- use tomatoseed
QRCore.Functions.CreateUseableItem("tomatoseed", function(source, item)
    local src = source
	TriggerClientEvent("rsg-farming:client:planting", src, item.name, `CRP_TOMATOES_AA_SIM`, `CRP_TOMATOES_AA_SIM`, `CRP_TOMATOES_AA_SIM`)
end)

-- use wateringcan
QRCore.Functions.CreateUseableItem("wateringcan", function(source, item)
    local src = source
	TriggerClientEvent("rsg-farming:client:waterplant", src)
end)

-- give farming reward
RegisterServerEvent('rsg-farming:server:giveitem')
AddEventHandler('rsg-farming:server:giveitem', function(plant)
    local src = source
    local Player = QRCore.Functions.GetPlayer(src)
	local randomReward = math.random(1,7)
	-- corn
	if plant == `CRP_CORNSTALKS_AB_sim` then
		Player.Functions.AddItem('corn', randomReward)
		TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items["corn"], "add")
		TriggerClientEvent('QRCore:Notify', src, 'you harvested '..randomReward..' corn', 'success')
	-- sugar
	elseif plant == `CRP_SUGARCANE_AC_sim` then
		Player.Functions.AddItem('sugar', randomReward)
		TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items["sugar"], "add")
		TriggerClientEvent('QRCore:Notify', src, 'you harvested '..randomReward..' sugar', 'success')
	-- tobacco
	elseif plant == `CRP_TOBACCOPLANT_AC_sim` then
		Player.Functions.AddItem('tobacco', randomReward)
		TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items["tobacco"], "add")
		TriggerClientEvent('QRCore:Notify', src, 'you harvested '..randomReward..' tobacco', 'success')
	-- carrot
	elseif plant == `CRP_CARROTS_AA_SIM` then
		Player.Functions.AddItem('carrot', randomReward)
		TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items["carrot"], "add")
		TriggerClientEvent('QRCore:Notify', src, 'you harvested '..randomReward..' carrot', 'success')
	-- tomatoes
	elseif plant == `CRP_TOMATOES_AA_SIM` then
		Player.Functions.AddItem('tomato', randomReward)
		TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items["tomato"], "add")
		TriggerClientEvent('QRCore:Notify', src, 'you harvested '..randomReward..' tomato', 'success')
	else
		TriggerClientEvent('QRCore:Notify', src, 'something went wrong!', 'error')
	end
end)

-- remove items
RegisterServerEvent('rsg-farming:server:removeitem')
AddEventHandler('rsg-farming:server:removeitem', function(item)
	local src = source
    local Player = QRCore.Functions.GetPlayer(src)
	Player.Functions.RemoveItem(item, 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QRCore.Shared.Items[item], "remove")
end)