Config = {}

-- settings
Config.TimeToGrow = 1800 -- 1800 = 30 mins / testing 60 = 60 seconds

Config.Blip = {
    blipName = 'Farm Shop', -- Config.Blip.blipName
    blipSprite = 'blip_shop_market_stall', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

-- farm shop
Config.FarmShop = {
		[1] = {	name = "carrotseed",		price = 0.10,	amount = 500,	info = {},	type = "item",	slot = 1, },
        [2] = {	name = "cornseed",			price = 0.10,	amount = 500,	info = {},	type = "item",	slot = 2, },
		[3] = {	name = "sugarseed",			price = 0.10,	amount = 500,	info = {},	type = "item",	slot = 3, },
		[4] = {	name = "tobaccoseed",		price = 0.10,	amount = 500,	info = {},	type = "item",	slot = 4, },
		[5] = {	name = "tomatoseed",		price = 0.10,	amount = 500,	info = {},	type = "item",	slot = 5, },
		[6] = {	name = "wateringcan",		price = 10,		amount = 50,	info = {},	type = "item",	slot = 6, },
		[7] = {	name = "fertilizer",		price = 0.10,	amount = 5000,	info = {},	type = "item",	slot = 7, },
}

-- farm shop locations
Config.FarmShopLocations = {
	{name = 'Farm Shop', coords = vector3(-249.43, 685.72, 113.33), showblip = true},
}

-- farm shop npc
Config.FarmNpc = {
	[1] = { ["Model"] = "A_M_M_ValFarmer_01", ["Pos"] = vector3(-249.43, 685.72, 113.33 -1), ["Heading"] = 144.27 }, -- farmer market valentine
}

Config.FarmZone = { 
    [1] = {
        zones = { -- example
			vector2(-347.09591674805, 894.11151123047),
			vector2(-390.92279052734, 889.30194091797),
			vector2(-392.01412963867, 911.32104492188),
			vector2(-373.91583251953, 913.11346435547),
			vector2(-369.53713989258, 944.28149414063),
			vector2(-349.36514282227, 941.19653320313)
        },
		name = "farmzone1",
		minZ = 115.78807830811,
		maxZ = 122.06151580811,
		showblip = true,
		blipcoords = vector3(-375.72, 900.24, 116.08)
    },
}