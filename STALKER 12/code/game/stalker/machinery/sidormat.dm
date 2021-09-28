var/list/trash_tier_sidormatitems = list()
var/list/low_tier_sidormatitems = list()
var/list/medium_tier_sidormatitems = list()
var/list/high_tier_sidormatitems = list()
var/list/real_sidormat_items = list()

var/list/global_sidormat_list = list(
	/** Weapons **/

	// Handguns
	"Handguns" = list(
		new /datum/data/stalker_equipment("PMM",				"PMM",				/obj/item/weapon/gun/projectile/automatic/pistol/pm,			3000,	ROOKIE),
		new /datum/data/stalker_equipment("TT",					"TT",				/obj/item/weapon/gun/projectile/automatic/pistol/tt,			3000,	ROOKIE),
		new /datum/data/stalker_equipment("Fort-12",			"Fort-12",			/obj/item/weapon/gun/projectile/automatic/pistol/fort12,		6500,	ROOKIE),
		new /datum/data/stalker_equipment("PB-1s",				"PB-1s",			/obj/item/weapon/gun/projectile/automatic/pistol/pb1s,			4500,	ROOKIE),
		new /datum/data/stalker_equipment("SIG Sauer P220",		"SIG Sauer P220",	/obj/item/weapon/gun/projectile/automatic/pistol/sip,			12500,	EXPERIENCED),
		new /datum/data/stalker_equipment("Colt M1911",			"Colt M1911",		/obj/item/weapon/gun/projectile/automatic/pistol/cora,			9000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Beretta 92FS",		"Beretta 92FS",		/obj/item/weapon/gun/projectile/automatic/pistol/marta,			9000,	EXPERIENCED),
		new /datum/data/stalker_equipment("USP Match",			"USP Match",		/obj/item/weapon/gun/projectile/automatic/pistol/usp_match, 	16000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Colt Anaconda",		"Colt Anaconda",	/obj/item/weapon/gun/projectile/revolver/anaconda,				25000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Desert Eagle",		"Desert Eagle",		/obj/item/weapon/gun/projectile/automatic/pistol/desert,		30000,	EXPERIENCED)
	),

	// Submachine Guns & Automatic Rifles
	"Automatic Weapons" = list(
		new /datum/data/stalker_equipment("Beretta M38",		"Beretta M38",		/obj/item/weapon/gun/projectile/automatic/berettam38,			10000,	ROOKIE),
		new /datum/data/stalker_equipment("Kiparis",			"Kiparis",			/obj/item/weapon/gun/projectile/automatic/kiparis,				10000,	ROOKIE),
		new /datum/data/stalker_equipment("PPSH",				"PPSH",				/obj/item/weapon/gun/projectile/automatic/ppsh,					15000,	ROOKIE),
		new /datum/data/stalker_equipment("MP-5",				"MP-5",				/obj/item/weapon/gun/projectile/automatic/mp5,					18000,	ROOKIE),
		new /datum/data/stalker_equipment("AK-74S",				"AK-74S",			/obj/item/weapon/gun/projectile/automatic/aksu74,				24000,	ROOKIE),
		new /datum/data/stalker_equipment("AK-74",				"AK-74",			/obj/item/weapon/gun/projectile/automatic/ak74,					30000,	ROOKIE),
		new /datum/data/stalker_equipment("AS-96",				"AS-96",			/obj/item/weapon/gun/projectile/automatic/abakan,				40000,	EXPERIENCED),
		new /datum/data/stalker_equipment("LR-300",				"LR-300",			/obj/item/weapon/gun/projectile/automatic/tpc301,				40000,	EXPERIENCED),
		new /datum/data/stalker_equipment("L85",				"L85",				/obj/item/weapon/gun/projectile/automatic/il86,					40000,	EXPERIENCED),
		new /datum/data/stalker_equipment("OTS-14 \"Thunder\"", "OTS-14 \"Thunder\"",/obj/item/weapon/gun/projectile/automatic/groza,				35000,	EXPERIENCED),
		new /datum/data/stalker_equipment("AS \"Val\"",			"AS \"Val\"",		/obj/item/weapon/gun/projectile/automatic/val,					50000,	VETERAN),
		new /datum/data/stalker_equipment("SIG SG 550",			"SIG SG 550",		/obj/item/weapon/gun/projectile/automatic/sigsg550,				50000,	VETERAN),
		new /datum/data/stalker_equipment("FN F2000",			"FN F2000",			/obj/item/weapon/gun/projectile/automatic/fnf2000,				65000,	EXPERT),
		new /datum/data/stalker_equipment("GP 37",				"GP 37",			/obj/item/weapon/gun/projectile/automatic/gp37,					75000,	EXPERT),
		new /datum/data/stalker_equipment("FN F2000S",			"FN F2000S",		/obj/item/weapon/gun/projectile/automatic/fnf2000s,				100000,	EXPERT),
		//new /datum/data/stalker_equipment("PKM",				"PKM",				/obj/item/weapon/gun/projectile/automatic/l6_saw/pkm,			200000,	EXPERT)
	),

	// Shotguns
	"Shotguns" = list(
		new /datum/data/stalker_equipment("Sawn-off Shotgun",	"Sawn-off Shotgun",	/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff,			6000,	ROOKIE),
		new /datum/data/stalker_equipment("BM-16",				"BM-16",			/obj/item/weapon/gun/projectile/revolver/bm16,					10000,	ROOKIE),
		new /datum/data/stalker_equipment("TOZ-34",				"TOZ-34", 			/obj/item/weapon/gun/projectile/revolver/bm16/toz34,			15000,	ROOKIE),
		new /datum/data/stalker_equipment("Ithaca M37",			"Ithaca M37",		/obj/item/weapon/gun/projectile/shotgun/ithaca,					20000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Winchester 1300",	"Winchester 1300",	/obj/item/weapon/gun/projectile/shotgun/chaser,					30000,	EXPERIENCED),
		new /datum/data/stalker_equipment("SPAS-12",			"SPAS-12",			/obj/item/weapon/gun/projectile/shotgun/spsa,					75000,	VETERAN)
	),

	// Single-shot Rifles
	"Rifles" = list(
		new /datum/data/stalker_equipment("Lee Enfield",		"Lee Enfield",		/obj/item/weapon/gun/projectile/shotgun/boltaction/mosin/enfield,		15000,	ROOKIE),
		new /datum/data/stalker_equipment("VSS Vintorez", 		"VSS Vintorez",		/obj/item/weapon/gun/projectile/automatic/vintorez,						60000,	EXPERT)
	),

	// Melee Weapons
	"Melee Weapons" = list(
		new /datum/data/stalker_equipment("Kitchen Knife",		"Kitchen Knife",		/obj/item/weapon/kitchen/knife,									1500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist Knife",		"Tourist Knife",		/obj/item/weapon/kitchen/knife/tourist,							4000,	ROOKIE),
		new /datum/data/stalker_equipment("Switchblade",		"Switchblade",			/obj/item/weapon/switchblade,									5500,	ROOKIE),
		new /datum/data/stalker_equipment("Bayonet",			"Bayonet",				/obj/item/weapon/kitchen/knife/bayonet,							7000,	ROOKIE),
		new /datum/data/stalker_equipment("Butcher's Cleaver",	"Butcher's Cleaver",	/obj/item/weapon/kitchen/knife/butcher,							10000,	ROOKIE),
		new /datum/data/stalker_equipment("Hunting Knife",		"Hunting Knife",		/obj/item/weapon/kitchen/knife/hunting,							15000,	ROOKIE),
		new /datum/data/stalker_equipment("M9 Knife",			"M9 Knife",				/obj/item/weapon/kitchen/knife/m9,								25000,	ROOKIE)


	),

	// Ammo Boxes
	"Ammo Boxes" = list(
		new /datum/data/stalker_equipment("9x18mm Ammo Box",				"9x18mm Ammo Box",							/obj/item/ammo_box/stalker/b9x18,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("9x18mm AP Ammo Box",				"9x18mm AP Ammo Box",						/obj/item/ammo_box/stalker/b9x18P,			2500,	EXPERIENCED),
		new /datum/data/stalker_equipment("7.62x25mm Ammo Box",				"7.62x25mm Ammo Box",						/obj/item/ammo_box/stalker/b762x25,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("9x19mm Ammo Box",				"9x19mm Ammo Box",							/obj/item/ammo_box/stalker/b9x19,			2500,	ROOKIE),
		new /datum/data/stalker_equipment("9x19mm AP Ammo Box",				"9x19mm AP Ammo Box",						/obj/item/ammo_box/stalker/b9x19P,			3750,	EXPERIENCED),
		new /datum/data/stalker_equipment(".45 ACP Ammo Box",				".45 ACP Ammo Box",							/obj/item/ammo_box/stalker/bacp45,			5000,	ROOKIE),
		new /datum/data/stalker_equipment(".45 ACP Hydroshock Ammo Box",	".45 ACP Hydroshock Ammo Box",				/obj/item/ammo_box/stalker/bacp45ap,		7500,	EXPERIENCED),
		new /datum/data/stalker_equipment(".44 Magnum Ammo Box",			".44 Magnum Ammo Box",						/obj/item/ammo_box/stalker/bmag44,			7000,	EXPERIENCED),
		new /datum/data/stalker_equipment(".44 Magnum Ammo FMJ Box",		".44 Magnum Ammo FMJ Box",					/obj/item/ammo_box/stalker/bmag44fmj,		10000,	EXPERIENCED),
		new /datum/data/stalker_equipment("12x70 Buckshot Ammo Box",		"12x70 Buckshot Ammo Box",					/obj/item/ammo_box/stalker/b12x70,			3000,	ROOKIE),
		new /datum/data/stalker_equipment("12x70 Slug Ammo Box",			"12x70 Slug Ammo Box",						/obj/item/ammo_box/stalker/b12x70P,			4500,	EXPERIENCED),
		new /datum/data/stalker_equipment("12x70 Dart Ammo Box",			"12x70 Dart Ammo Box",						/obj/item/ammo_box/stalker/b12x70D,			6000,	EXPERIENCED),
		new /datum/data/stalker_equipment("5.45x39mm Ammo Box",				"5.45x39mm Ammo Box",						/obj/item/ammo_box/stalker/b545,			8000,	ROOKIE),
		new /datum/data/stalker_equipment("5.45x39mm Ammo AP Box",			"5.45x39mm Ammo AP Box",					/obj/item/ammo_box/stalker/b545ap,			12000,	VETERAN),
		new /datum/data/stalker_equipment("5.56x45mm Ammo Box",				"5.56x45mm Ammo Box",						/obj/item/ammo_box/stalker/b55645,			10000,	ROOKIE),
		new /datum/data/stalker_equipment("5.56x45mm Ammo AP Box",			"5.56x45mm Ammo AP Box",					/obj/item/ammo_box/stalker/b55645ap,		15000,	VETERAN),
		new /datum/data/stalker_equipment("7.62x51 Ammo Box",				"7.62x51 Ammo Box",							/obj/item/ammo_box/stalker/b762x51,			8000,	ROOKIE),
		new /datum/data/stalker_equipment("9x39mm PAB-9 Ammo Box",			"9x39mm PAB-9 Ammo Box",					/obj/item/ammo_box/stalker/b939,			10000,	EXPERIENCED)
	),

	"Ammo Magazines and Clips" = list(
		new /datum/data/stalker_equipment("PMM/PB1-s 9x18mm Magazine",				"PMM/PB1-s 9x18mm Magazine",			/obj/item/ammo_box/magazine/stalker/m9x18pm,			700,	ROOKIE),
		new /datum/data/stalker_equipment("TT Magazine",							"TT Magazine",							/obj/item/ammo_box/magazine/stalker/tt,					600,	ROOKIE),
		new /datum/data/stalker_equipment("Fort-12 Magazine",						"Fort-12 Magazine",						/obj/item/ammo_box/magazine/stalker/m9x18fort_u,		1000,	ROOKIE),
		new /datum/data/stalker_equipment("Kiparis Magazine",						"Kiparis Magazine",						/obj/item/ammo_box/magazine/stalker/kiparis,			1400,	ROOKIE),
		new /datum/data/stalker_equipment("MP-5 Magazine",							"MP-5 Magazine",						/obj/item/ammo_box/magazine/stalker/m9x19mp5,			2000,	ROOKIE),
		new /datum/data/stalker_equipment("PPSh Drum",								"PPSh Drum",							/obj/item/ammo_box/magazine/stalker/ppsh,				5000,	ROOKIE),
		new /datum/data/stalker_equipment("5.45x39mm Magazine",						"5.45x39mm Magazine",					/obj/item/ammo_box/magazine/stalker/m545,				2250,	ROOKIE),
		new /datum/data/stalker_equipment("5.56x45mm Magazine",						"5.56x45mm Magazine",					/obj/item/ammo_box/magazine/stalker/m556x45,			3500,	ROOKIE),
		new /datum/data/stalker_equipment("7.62x39mm Magazine",						"7.62x39mm Magazine",					/obj/item/ammo_box/magazine/stalker/a762x39,	 		3000,	ROOKIE),
		new /datum/data/stalker_equipment("AS \"Val\" Magazine",					"AS \"Val\" Magazine",					/obj/item/ammo_box/magazine/stalker/sp9x39val,			3000,	VETERAN),
		new /datum/data/stalker_equipment("OTS-14 \"Thunder\" Magazine",			"OTS-14 \"Thunder\" Magazine",			/obj/item/ammo_box/magazine/stalker/sp9x39groza,		3500,	EXPERIENCED),
		new /datum/data/stalker_equipment("VSS \"Vintorez\" Magazine",				"VSS \"Vintorez\" Magazine",			/obj/item/ammo_box/magazine/stalker/sp9x39vint,			3000,	VETERAN),
		new /datum/data/stalker_equipment("Colt M1911; SIG-Sauer P220 Magazine",	"Colt M1911; SIG-Sauer P220 Magazine",	/obj/item/ammo_box/magazine/stalker/sc45,				1400,	ROOKIE),
		new /datum/data/stalker_equipment("Beretta 92FS Magazine",					"Beretta 92FS Magazine",				/obj/item/ammo_box/magazine/stalker/m9x19marta,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Beretta M38 Magazine",					"Beretta M38 Magazine",					/obj/item/ammo_box/magazine/stalker/berettam38,			1250,	ROOKIE),
		new /datum/data/stalker_equipment("USP-match Magazine",						"USP-match Magazine",					/obj/item/ammo_box/magazine/stalker/usp45,				2500,	ROOKIE),
		new /datum/data/stalker_equipment("Desert Eagle Magazine",					"Desert Eagle Magazine",				/obj/item/ammo_box/magazine/stalker/desert,				2000,	EXPERIENCED),
		new /datum/data/stalker_equipment("PKM ammo belt box",						"PKM ammo belt box",					/obj/item/ammo_box/magazine/stalker/pkm,				20000,	EXPERIENCED),
		new /datum/data/stalker_equipment("7.62x51 Clip",							"7.62x51 Clip",							/obj/item/ammo_box/stalker/cl762x51,					800,	ROOKIE)
		),

	/** Outer Clothing **/
	"Suits" = list(
		new /datum/data/stalker_equipment("Leather Jacket",				"Leather Jacket",			/obj/item/clothing/suit/hooded/kozhanka,					5000,		ROOKIE),
		new /datum/data/stalker_equipment("White Leather Jacket",		"White Leather Jacket",		/obj/item/clothing/suit/hooded/kozhanka/white,				5000,		ROOKIE),
		new /datum/data/stalker_equipment("Armored Tan Coat",			"Armored Tan Coat",			/obj/item/clothing/suit/hooded/kozhanka/tancoat,			15000,		ROOKIE),
		new	/datum/data/stalker_equipment("Bandit Jacket",				"Bandit Jacket",			/obj/item/clothing/suit/hooded/kozhanka/banditka,			6000,		ROOKIE,		faction = "Bandits"),
		new	/datum/data/stalker_equipment("Military Service Outfit",	"Military Service Outfit",	/obj/item/clothing/suit/army,								15000,		ROOKIE,		faction = "Military"),
		new /datum/data/stalker_equipment("Sunrise Outfit",				"Sunrise Outfit",			/obj/item/clothing/suit/hooded/kombez,						33000,		ROOKIE,		faction = "Loners"),
		new /datum/data/stalker_equipment("Mercenary Outfit",			"Mercenary Outfit",			/obj/item/clothing/suit/hooded/kombez/mercenary,			25000,		ROOKIE,		faction = "Mercenaries"),
		new /datum/data/stalker_equipment("Bandit Outfit",				"Bandit Outfit",			/obj/item/clothing/suit/hooded/kombez/kombez_bandit,		25000,		ROOKIE,		faction = "Bandits"),
		new /datum/data/stalker_equipment("Black Trenchcoat",			"Black Trenchcoat",			/obj/item/clothing/suit/hooded/kozhanka/banditka/coat,		12500,		ROOKIE,		faction = "Bandits"),
		new /datum/data/stalker_equipment("Brown Trenchcoat",			"Brown Trenchcoat",			/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown,12500,		ROOKIE),
		new /datum/data/stalker_equipment("Berill-5M",					"Berill-5M",				/obj/item/clothing/suit/berill,								50000,		EXPERIENCED,faction = "Military"),
		new /datum/data/stalker_equipment("Wind of Freedom",	    	"Wind of Freedom",			/obj/item/clothing/suit/hooded/kombez/veter,				25000,		ROOKIE,		faction = "Freedom"),
		new /datum/data/stalker_equipment("Guardian of Freedom",		"Guardian of Freedom",		/obj/item/clothing/suit/strazh,								40000,		EXPERIENCED,faction = "Freedom"),
		new /datum/data/stalker_equipment("PZ-1	",						"PZ-1",						/obj/item/clothing/suit/hooded/kombez/monolith,				25000,		ROOKIE,		faction = "Monolith", sale_price = 8000),
		new /datum/data/stalker_equipment("Monolith Scientific Suit",	"Monolith Scientific Suit",	/obj/item/clothing/suit/hooded/sealed/monolith,				60000,		ROOKIE,		faction = "Monolith"),
		new /datum/data/stalker_equipment("PS5-M",						"PS5-M",					/obj/item/clothing/suit/hooded/kombez/ps5m,					25000,		ROOKIE,		faction = "Duty"),
		new /datum/data/stalker_equipment("Heavy Mercenary Armour",		"Heavy Mercenary Armour",	/obj/item/clothing/suit/assaultmerc,						50000,		EXPERIENCED,faction = "Mercenaries"),
		new /datum/data/stalker_equipment("PSZ-9D",						"PSZ-9D",					/obj/item/clothing/suit/psz9d,								60000,		VETERAN,	faction = "Duty"),
		new	/datum/data/stalker_equipment("PSZ-9M",						"PSZ-9M",					/obj/item/clothing/suit/hooded/sealed/psz9md,				75000,		VETERAN,	faction = "Duty"),
		new	/datum/data/stalker_equipment("SSP-99 Ecologist",			"SSP-99 Ecologist",			/obj/item/clothing/suit/hooded/sealed/ecolog,				75000,		EXPERT,	faction = "Ecologists"),
		new	/datum/data/stalker_equipment("SSP-99M Ecologist",			"SSP-99M Ecologist",		/obj/item/clothing/suit/hooded/sealed/ecologm,				100000,		EXPERT,	faction = "Ecologists"),
		new	/datum/data/stalker_equipment("SEVA",						"SEVA",						/obj/item/clothing/suit/hooded/sealed/seva,					250000,		EXPERT,	faction = "Ecologists"),
		new /datum/data/stalker_equipment("SKAT-9M",					"SKAT-9M",					/obj/item/clothing/suit/skat,								500000,		EXPERT,		faction = "Military"),
		new	/datum/data/stalker_equipment("Exoskeleton",				"Exoskeleton",				/obj/item/clothing/suit/hooded/sealed/exoskelet,			1000000,	EXPERT,		assortment_level = 500)
	),

	// Headwear
	"Masks and Helmets" = list(
		new /datum/data/stalker_equipment("Respirator",					"Respirator",					/obj/item/clothing/mask/gas/stalker/respirator,					1500,	ROOKIE),
		new /datum/data/stalker_equipment("Gas Mask",					"Gas Mask",						/obj/item/clothing/mask/gas/stalker,							7500,	ROOKIE),
		new /datum/data/stalker_equipment("Mercenary Gas Mask",			"Mercenary Gas Mask",			/obj/item/clothing/mask/gas/stalker/mercenary,					7500,	ROOKIE,	faction = "Mercenaries"),
		new /datum/data/stalker_equipment("Steel Helmet",				"Steel Helmet",					/obj/item/clothing/head/steel,									7500,	ROOKIE),
		new /datum/data/stalker_equipment("Light Tactical Helmet",		"Light Tactical Helmet",		/obj/item/clothing/head/hardhat/tactical/light,					12500,	EXPERIENCED),
		new /datum/data/stalker_equipment("Tactical Helmet",			"Tactical Helmet",				/obj/item/clothing/head/tacticalhelmet,							25000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Assault Helmet",	    		"Assault Helmet",				/obj/item/clothing/head/assaultmerc,							30000,	EXPERIENCED,	faction = "Mercenaries"),
		new /datum/data/stalker_equipment("Sphera-M12",			 		"Sphera-M12",					/obj/item/clothing/head/spheram,								30000,	EXPERIENCED,	faction = "Military"),
		new /datum/data/stalker_equipment("SKAT-9M Helmet",				"SKAT-9M Helmet",				/obj/item/clothing/head/skathelmet,								250000,	VETERAN, 		faction = "Military")
	),

	"Medicine" = list(
		///////////////////////////////	Medicine	/////////////////////////////////////////
		new /datum/data/stalker_equipment("Medkit",						"Medkit",						/obj/item/weapon/storage/firstaid/stalker/civillian,						1000,	ROOKIE,	 		sale_price = 50),
		new /datum/data/stalker_equipment("Army medkit",				"Army medkit",					/obj/item/weapon/storage/firstaid/stalker/military,							2500,	EXPERIENCED,	sale_price = 125),
		new /datum/data/stalker_equipment("Scientific medkit",			"Scientific medkit",			/obj/item/weapon/storage/firstaid/stalker/scientific,						5000,	VETERAN,			sale_price = 250),
		new /datum/data/stalker_equipment("Bandage",					"Bandage",						/obj/item/stack/medical/gauze/bint,											750,	ROOKIE),
		new /datum/data/stalker_equipment("Anti-rad",					"Anti-rad",						/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad,		3500,	ROOKIE)
		),

	"Food" = list(
		/////////////////////////////////	Food	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Canned stew",				"Canned stew",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",				"Canned fish",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti,		750,	ROOKIE),
		new /datum/data/stalker_equipment("Vodka \"Kazaki\"",			"Vodka \"Kazaki\"",			/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Energy drink \"NonStop\"",	"Energy drink \"NonStop\"",	/obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic,			500,	ROOKIE),
		new /datum/data/stalker_equipment("Snickers",					"Snickers",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/snikers,	300,	EXPERIENCED),
		new /datum/data/stalker_equipment("Salami",						"Salami",					/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,				500,	ROOKIE),
		new /datum/data/stalker_equipment("Bread",						"Bread",					/obj/item/weapon/reagent_containers/food/snacks/stalker/baton,					400,	ROOKIE)
		),

	"Backpacks" = list(
		new /datum/data/stalker_equipment("Cheap satchel",					"Cheap satchel",			/obj/item/weapon/storage/backpack/satchel/stalker/civilian,					2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cheap backpack",					"Cheap backpack",			/obj/item/weapon/storage/backpack/stalker/civilian,							2500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist backpack",				"Tourist backpack",			/obj/item/weapon/storage/backpack/stalker/tourist,							6000,	ROOKIE),
		new /datum/data/stalker_equipment("Professional backpack",			"Professional backpack",	/obj/item/weapon/storage/backpack/stalker/professional,						11000,	ROOKIE)
		),

	"Misc" = list(
		/////////////////////////////////	Misc	/////////////////////////////////////////////
		new /datum/data/stalker_equipment/stalker_pda("PDA",					"PDA",									/obj/item/device/stalker_pda,									4000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for suits and helmets",	"Repair-kit for suits and helmets",		/obj/item/device/repair_kit/clothing,							10000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for guns",				"Repair-kit for guns",					/obj/item/device/repair_kit/gun,								4000,	ROOKIE),
		new /datum/data/stalker_equipment("Guitar",								"Guitar",								/obj/item/device/instrument/guitar,								3000,	ROOKIE),
		new /datum/data/stalker_equipment("Geiger counter",						"Geiger counter",						/obj/item/device/geiger_counter,								3000,	ROOKIE),
		new /datum/data/stalker_equipment("Walkie-talkie",						"Walkie-talkie",						/obj/item/device/radio,											2500,	ROOKIE),
		new /datum/data/stalker_equipment("Flashlight",							"Flashlight",							/obj/item/device/flashlight/seclite,							1000,	ROOKIE),
		new /datum/data/stalker_equipment("Big Artifact belt",					"Big Artifact belt",					/obj/item/weapon/storage/belt/stalker/artifact_belt,			60000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Small Artifact belt",				"Small Artifact belt",					/obj/item/weapon/storage/belt/stalker/artifact_belt/small,		25000,	ROOKIE),
		new /datum/data/stalker_equipment("Matches",							"Matches",								/obj/item/weapon/storage/box/matches,							1000,	ROOKIE),
		new /datum/data/stalker_equipment("Simple lighter",						"Simple lighter",						/obj/item/weapon/lighter/greyscale,								3000,	ROOKIE),
		new /datum/data/stalker_equipment("Zippo lighter",						"Zippo lighter",						/obj/item/weapon/lighter,										5000,	ROOKIE),
		new /datum/data/stalker_equipment("Cigarettes \"Maxim\"",				"Cigarettes \"Maxim\"",					/obj/item/weapon/storage/fancy/cigarettes/cigpack/maxim,		2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cigars",								"Cigars",								/obj/item/weapon/storage/fancy/cigarettes/cigars,				10000,	ROOKIE),
		new /datum/data/stalker_equipment("Circle Flask",						"Circle Flask",							/obj/item/weapon/reagent_containers/food/drinks/flask/circle,	1000,	ROOKIE)

		),
	"Clothing" = list(
		new /datum/data/stalker_equipment("Sweater",							"Sweater",										/obj/item/clothing/under/color/switer,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Dark Sweater",						"Dark Sweater",									/obj/item/clothing/under/color/switer/dark,					1500,	ROOKIE),
		new /datum/data/stalker_equipment("Telnyashka",							"Telnyashka",									/obj/item/clothing/under/color/switer/lolg,					1500,	ROOKIE),
		new /datum/data/stalker_equipment("Tracksuit",							"Tracksuit",									/obj/item/clothing/under/color/switer/tracksuit,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Worn out army boots",				"Worn out army boots",							/obj/item/clothing/shoes/jackboots/warm,					800,	ROOKIE),
		new /datum/data/stalker_equipment("Fingerless gloves",					"Fingerless gloves",							/obj/item/clothing/gloves/fingerless,						600,	ROOKIE),
		new /datum/data/stalker_equipment("Balaclava",							"Balaclava",									/obj/item/clothing/mask/balaclava,							700,	ROOKIE)
		),

	// Artifact detectors
	"Detectors" = list(
		new /datum/data/stalker_equipment("Blink", 		"Blink",					/obj/item/device/detector/blink,				4000,	ROOKIE),
		new /datum/data/stalker_equipment("Bear",		"Bear",						/obj/item/device/detector/bear,					12000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Veles",		"Veles",					/obj/item/device/detector/veles,				36000,	VETERAN),
		),

	"Attachments" = list(
		/////////////////////////////////	Attachments	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Universal suppressor",	"Universal suppressor",						/obj/item/weapon/attachment/suppressor,				2000,	ROOKIE),
		new /datum/data/stalker_equipment("SUSAT",					"SUSAT",									/obj/item/weapon/attachment/scope/SUSAT,			8000,	EXPERIENCED),
		new /datum/data/stalker_equipment("PSU-1",					"PSU-1",									/obj/item/weapon/attachment/scope/PS/U1,			6000,	EXPERIENCED),
		new /datum/data/stalker_equipment("PSO-1",					"PSO-1",									/obj/item/weapon/attachment/scope/PS/O1,			10000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Rifle/Shotgun scope",	"Rifle/Shotgun scope",						/obj/item/weapon/attachment/scope/rifle,			8000,	ROOKIE)
		///////////////////////////////////////////////////////////////////////////////////////////
		),

	"Unbuyable" = list(
		new /datum/data/stalker_equipment("Canned soup",					"Canned soup",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup,				900,	ROOKIE),
		new /datum/data/stalker_equipment("Canned beans",					"Canned beans",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Canned stew",					"Canned stew",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2,		900,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",					"Canned fish",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/fish,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Cream cheese",					"Cream cheese",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/sirok,		400,	ROOKIE),
		new /datum/data/stalker_equipment("Chocolate bar",					"Chocolate bar",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/chocolate,	600,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"Biscuits",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		new /datum/data/stalker_equipment("Cereal",						"Cereal",							/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/kasha,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"Canned meat",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva1,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"Canned meat",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva2,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat with vegetables",	"Canned meat with vegetables",	/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva3,		850,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"Biscuits",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		/////////////////////////////////	Artifacts	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Dog tail",						"Dog tail",				/obj/item/weapon/stalker/loot/dog_tail,			500,		ROOKIE, sale_price = 550),
		new /datum/data/stalker_equipment("Flesh eye",						"Flesh eye",			/obj/item/weapon/stalker/loot/flesh_eye,		1800,		ROOKIE, sale_price = 900),
		new /datum/data/stalker_equipment("Boar leg",						"Boar leg",				/obj/item/weapon/stalker/loot/boar_leg,			6000,		ROOKIE, sale_price = 3000),
		new /datum/data/stalker_equipment("Snork leg",						"Snork leg",			/obj/item/weapon/stalker/loot/snork_leg,		7000,		ROOKIE, sale_price = 3500),
		new /datum/data/stalker_equipment("Bloodsucker claw",				"Bloodsucker claw",		/obj/item/weapon/stalker/loot/bloodsucker,		12000,		ROOKIE, sale_price = 8000),
		new /datum/data/stalker_equipment("Pseudo-dog tail",				"Pseudo-dog tail",		/obj/item/weapon/stalker/loot/pseudo_tail,		2000,		ROOKIE, sale_price = 4000),
		new /datum/data/stalker_equipment("Controller brain",				"Controller brain",		/obj/item/weapon/stalker/loot/controller_brain,	40000,		ROOKIE, sale_price = 20000),
		///////////////////////////////// 	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Meduza",				"Meduza",					/obj/item/weapon/artifact/meduza,					5000,	ROOKIE,	sale_price = 2500),
		new /datum/data/stalker_equipment("Stoneflower",	"Stoneflower",					/obj/item/weapon/artifact/stoneflower,				10000,	ROOKIE,	sale_price = 5000),
		new /datum/data/stalker_equipment("Nightstar",		"Nightstar",					/obj/item/weapon/artifact/nightstar,				30000,	ROOKIE,	sale_price = 15000),
		new /datum/data/stalker_equipment("Soul",				"Soul",						/obj/item/weapon/artifact/soul,						80000,	ROOKIE,	sale_price = 35000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Flash",			"Flash",							/obj/item/weapon/artifact/flash,					6000,	ROOKIE,	sale_price = 3000),
		new /datum/data/stalker_equipment("Moonlight",		"Moonlight",						/obj/item/weapon/artifact/moonlight,				12000,	ROOKIE,	sale_price = 6000),
		new /datum/data/stalker_equipment("Pustishka",			"Pustishka",					/obj/item/weapon/artifact/pustishka,				40000,	ROOKIE,	sale_price = 20000),
		new /datum/data/stalker_equipment("Battery",			"Battery",						/obj/item/weapon/artifact/battery,					70000,	ROOKIE,	sale_price = 35000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Droplet",		"Droplet",						/obj/item/weapon/artifact/droplet,					7000,	ROOKIE,	sale_price = 3500),
		new /datum/data/stalker_equipment("Fireball",		"Fireball",						/obj/item/weapon/artifact/fireball,					15000,	ROOKIE,	sale_price = 7500),
		new /datum/data/stalker_equipment("Crystal",			"Crystal",					/obj/item/weapon/artifact/crystal,					60000,	ROOKIE,	sale_price = 30000),
		new /datum/data/stalker_equipment("Maminibusi",		"Maminibusi",					/obj/item/weapon/artifact/maminibusi,				80000,	ROOKIE,	sale_price = 40000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Stone Blood",	"Stone Blood",				/obj/item/weapon/artifact/stone_blood,				4000,	ROOKIE,	sale_price = 2000),
		new /datum/data/stalker_equipment("Bubble",				"Bubble",				/obj/item/weapon/artifact/bubble,					12000,	ROOKIE,	sale_price = 6000),
		new /datum/data/stalker_equipment("Mica",				"Mica",					/obj/item/weapon/artifact/mica,						30000,	ROOKIE,	sale_price = 15000),
		new /datum/data/stalker_equipment("Firefly",		"Firefly",					/obj/item/weapon/artifact/firefly,					60000,	ROOKIE,	sale_price = 30000),
		/////////////////////////////////	Konserva	//////////////////////////////////////////////
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva,							400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/MREkonserva1,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/MREkonserva2,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/MREkonserva3,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/bobi,						400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/fish,						500,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/govyadina,					400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/shproti,					600,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Konserva",							/obj/item/trash/konserva/soup,						500,	ROOKIE),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("50 RU",				"50 RU",							/obj/item/stack/spacecash/c50,						50,		ROOKIE,	sale_price = 50),
		new /datum/data/stalker_equipment("100 RU",				"100 RU",							/obj/item/stack/spacecash/c100,						100,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("500 RU",				"500 RU",							/obj/item/stack/spacecash/c500,						500,	ROOKIE,	sale_price = 500),
		new /datum/data/stalker_equipment("1000 RU",			"1000 RU",							/obj/item/stack/spacecash/c1000,					1000,	ROOKIE,	sale_price = 1000),
		new /datum/data/stalker_equipment("5000 RU",			"5000 RU",							/obj/item/stack/spacecash/c5000,					5000,	ROOKIE,	sale_price = 5000),
		///////////////////////////////////		Clothing/Equipment	///////////////////////////////////////////////
		new /datum/data/stalker_equipment("Hunter Coat",					"Hunter Coat",				/obj/item/clothing/suit/huntercoat,							5000,	ROOKIE, sale_price = 5000),
		new /datum/data/stalker_equipment("GP-5",							"GP-5",						/obj/item/clothing/mask/gas/stalker/gp5,					450,	ROOKIE, sale_price = 450),
		new /datum/data/stalker_equipment("Tourist sweater",				"Tourist sweater",			/obj/item/clothing/under/color/switer/tourist/sweater,		1500,	ROOKIE, sale_price = 750),
		new /datum/data/stalker_equipment("Tourist green jacket",			"Tourist green jacket",		/obj/item/clothing/under/color/switer/tourist/jacket_green,	1500,	ROOKIE, sale_price = 750),
		new /datum/data/stalker_equipment("Tourist brown jacket",			"Tourist brown jacket",		/obj/item/clothing/under/color/switer/tourist/jacket_brown,	1500,	ROOKIE, sale_price = 750),
		new /datum/data/stalker_equipment("Tourist suspenders",				"Tourist suspenders",		/obj/item/clothing/under/color/switer/tourist/suspenders,	1500,	ROOKIE, sale_price = 750),
		new /datum/data/stalker_equipment("Tourist security uniform",		"Tourist security uniform",	/obj/item/clothing/under/color/switer/tourist/mall_cop,		1500,	ROOKIE, sale_price = 750),
		new /datum/data/stalker_equipment("Tourist gorka",					"Tourist gorka",			/obj/item/clothing/under/color/switer/tourist/gorka,		1500,	ROOKIE, sale_price = 750),
		new /datum/data/stalker_equipment("Tourist jacket",					"Tourist jacket",			/obj/item/clothing/suit/kozhanka/tourist/jacket,			5500,	ROOKIE, sale_price = 2750),
		new /datum/data/stalker_equipment("Tourist coat",					"Tourist coat",				/obj/item/clothing/suit/kozhanka/tourist/coat,				5500,	ROOKIE, sale_price = 2750),
		new /datum/data/stalker_equipment("Tourist gorka jacket",			"Tourist gorka jacket",		/obj/item/clothing/suit/kozhanka/tourist/gorka,				5500,	ROOKIE, sale_price = 2750),
		new /datum/data/stalker_equipment("Cheap tourist satchel",			"Cheap tourist satchel",	/obj/item/weapon/storage/backpack/satchel,					2500,	ROOKIE),
		/////////////////////////////////	Weapons	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Wooden Hatchet",			"Wooden Hatchet",				/obj/item/weapon/kitchen/knife/hatchet,				500,	ROOKIE,	sale_price = 500),
		/////////////////////////////////	Medkit components	//////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Ointment",					"Ointment",						/obj/item/stack/medical/ointment,											25,	ROOKIE,	sale_price = 25),
		new /datum/data/stalker_equipment("Bruise Pack",				"Bruise Pack",					/obj/item/stack/medical/bruise_pack,										25,	ROOKIE,	sale_price = 25),
		new /datum/data/stalker_equipment("Pill of Charcoal",			"Pill of Charcoal",				/obj/item/weapon/reagent_containers/pill/charcoal,							125,	ROOKIE,	sale_price = 125),
		new /datum/data/stalker_equipment("Epipen",						"Epipen",						/obj/item/weapon/reagent_containers/hypospray/medipen,						125,	ROOKIE,	sale_price = 125),
		new /datum/data/stalker_equipment("Brute Patch",				"Brute Patch",					/obj/item/weapon/reagent_containers/pill/patch/styptic,						250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Burn Patch",					"Burn Patch",					/obj/item/weapon/reagent_containers/pill/patch/silver_sulf,					250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Combat Patch",				"Combat Patch",					/obj/item/weapon/reagent_containers/pill/patch/synthflesh,					250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Brute Injector",				"Brute Injector",				/obj/item/weapon/reagent_containers/pill/stalker/injector/brute,			250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Burn Injector",				"Burn Injector",				/obj/item/weapon/reagent_containers/pill/stalker/injector/burn,				250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Blood Injector",				"Blood Injector",				/obj/item/weapon/reagent_containers/pill/stalker/injector/blood,			250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Painkillers Injector",		"Painkillers Injector",			/obj/item/weapon/reagent_containers/pill/stalker/injector/painkiller,		250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Antitoxin Injector",			"Antitoxin Injector",			/obj/item/weapon/reagent_containers/pill/stalker/injector/toxin,			250,	ROOKIE,	sale_price = 250),
		/////////////////////////////////	Junk	//////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Metal Hip Flask",			"Metal Hip Flask",				/obj/item/weapon/reagent_containers/food/drinks/flask,						250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Russian Flask",				"Russian Flask",				/obj/item/weapon/reagent_containers/food/drinks/flask/russian,				250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Commie Flask",				"Commie Flask",					/obj/item/weapon/reagent_containers/food/drinks/flask/commie,				800,	ROOKIE,	sale_price = 800),
		new /datum/data/stalker_equipment("Cylinder Flask",				"Cylinder Flask",				/obj/item/weapon/reagent_containers/food/drinks/flask/cylinder,				300,	ROOKIE,	sale_price = 300),
		new /datum/data/stalker_equipment("Face Flask",					"Face Flask",					/obj/item/weapon/reagent_containers/food/drinks/flask/face,					250,	ROOKIE,	sale_price = 250),
		new /datum/data/stalker_equipment("Steel Wire",					"Steel Wire",					/obj/item/trash/steelwire1,													175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Old Circuit Board",			"Old Circuit Board",			/obj/item/trash/oldcircuitboard,											175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Old Circuit Board",			"Old Circuit Board",			/obj/item/trash/oldcircuitboard0,											175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Duct Tape",					"Duct Tape",					/obj/item/trash/duct_tape,													175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Old Chemical Bottle",		"Old Chemical Bottle",			/obj/item/trash/oldchembottle,												175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Pincers",					"Pincers",						/obj/item/trash/pincers,													175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Wire",						"Wire",							/obj/item/trash/wire,														175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Steel Wire",					"Steel Wire",					/obj/item/trash/steelwire,													175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Tea Pot",					"Tea Pot",						/obj/item/trash/teapot,														175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Cross Necklace",				"Cross Necklace",				/obj/item/trash/crossnecklace,												175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Old Photo",					"Old Photo",					/obj/item/trash/oldphoto,													175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Paint Can",					"Paint Can",					/obj/item/trash/paintcan,													175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Old Vials",					"Old Vials",					/obj/item/trash/oldvials,													175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Car Keys",					"Car Keys",						/obj/item/trash/carkey,														175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Porn Magazine",				"Porn Magazine",				/obj/item/trash/pornmagazine/five,											200,	ROOKIE,	sale_price = 150),
		new /datum/data/stalker_equipment("Porn Magazine",				"Porn Magazine",				/obj/item/trash/pornmagazine/four,											200,	ROOKIE,	sale_price = 150),
		new /datum/data/stalker_equipment("Porn Magazine",				"Porn Magazine",				/obj/item/trash/pornmagazine/three,											350,	ROOKIE,	sale_price = 350),
		new /datum/data/stalker_equipment("Porn Magazine",				"Porn Magazine",				/obj/item/trash/pornmagazine/two,											200,	ROOKIE,	sale_price = 150),
		new /datum/data/stalker_equipment("Porn Magazine",				"Porn Magazine",				/obj/item/trash/pornmagazine,												200,	ROOKIE,	sale_price = 150),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/allquietonthewesternfront,						175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/solaris,										175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/roadsidepicnic,								175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/metro2033,										175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/crimeandpunishment,							175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/theprophetdeath,								175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/theprophetfriendship,							175,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Book",						"Book",							/obj/item/weapon/book/manual/theprophetpain,								175,	ROOKIE,	sale_price = 100)

		)
	)

/obj/machinery/stalker
	icon = 'icons/stalker/decor.dmi'

/obj/machinery/stalker/sidormat
	name = "SYCHEMAT"
	desc = "An equipment vendor for beginning stalkers."
	icon_state = "radio"
	density = 1
	anchored = 1
	var/itemloc = null
	var/itemloc2 = null
	var/balance = 0
	var/rating = 0
	var/switches = BUY_STUFF
	var/real_assorment = list()
	var/list/special_factions = list("Loners", "Bandits")
	var/path_ending = null
	//Faction Locker
	var/obj/item/device/assembly/control/door_device = null

/datum/data/stalker_equipment
	//var/name = "generic"
	var/name_ru = "generic"
	var/equipment_path = null
	var/cost = 0
	var/rating = 0
	var/faction = "Everyone"
	var/sale_price = 0
	var/assortment_level = 0

/datum/data/stalker_equipment/New(name, name_ru, path, cost, rating, faction = "Everyone", sale_price = 0, assortment_level = 0)
	src.name = name
	src.name_ru = name_ru
	src.equipment_path = path
	src.cost = cost
	src.rating = rating
	src.faction = faction
	if(sale_price)
		src.sale_price = sale_price
	else
		src.sale_price = cost/2
	src.assortment_level = assortment_level
	switch(cost)
		if(0 to TRASH_TIER_COST)
			trash_tier_sidormatitems += src

		if(0 to LOW_TIER_COST)
			low_tier_sidormatitems += src

		if(0 to MEDIUM_TIER_COST)
			medium_tier_sidormatitems += src

		if(LOW_TIER_COST to HIGH_TIER_COST)
			high_tier_sidormatitems += src
	real_sidormat_items += src

/datum/data/stalker_equipment/proc/GetCost()
	return src.sale_price

/datum/data/stalker_equipment/stalker_pda/GetCost(var/obj/item/device/stalker_pda/KPK)
	var/cost_ = src.sale_price
	if(KPK.owner && (KPK.owner.stat == DEAD))
		var/rank_ = Clamp(KPK.profile.fields["rating"], ROOKIE, ZONE_LEGEND)
		cost_ += GetCostBasedOnReputation(KPK.profile.fields["reputation"])
		cost_ += rank_*2
	return cost_

/proc/GetCostBasedOnReputation(var/rep_)
	switch(rep_)
		if(AMAZING to INFINITY)
			return ((NEUTRAL - rep_) * 20)
		if(VERYGOOD to AMAZING)
			return ((NEUTRAL - rep_) * 10)
		if(GOOD to VERYGOOD)
			return ((NEUTRAL - rep_) * 5)
		if(BAD to GOOD)
			return 0
		if(VERYBAD to BAD)
			return ((NEUTRAL - rep_) * 5)
		if(DISGUSTING to VERYBAD)
			return ((NEUTRAL - rep_) * 10)
		if(-INFINITY to DISGUSTING)
			return ((NEUTRAL - rep_) * 20)

/obj/machinery/stalker/sidormat/New()
	itemloc = locate(x - 1, y, z)
	itemloc2 = locate(x + 1, y, z)

	sleep(10)

	if(path_ending && !door_device)
		door_device = new /obj/item/device/assembly/control(src)
		door_device.id = path_ending

/obj/machinery/stalker/sidormat/attack_hand(mob/user)
	balance = 0
	if(..())
		return

	if(!ishuman(user))
		say("You are not a human.")
		return

	var/mob/living/carbon/human/H = user

	interact(H)


/obj/machinery/stalker/sidormat/interact(mob/living/carbon/human/H)

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	//find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id
	var/datum/data/record/sk = KPK.profile

	if(!sk || !KPK.owner)
		say("Activate your KPK profile.")
		return

	if(KPK.owner != H)
		say("No access.")
		return

	H.set_machine(src)
	balance = sk.fields["money"]
	rating = sk.fields["rating"]

	var/dat
	if(H.client.prefs.chat_toggles & CHAT_LANGUAGE)

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat += "Balance: [num2text(balance, 8)] RU<br>"
		dat += "<br><br>INSTRUCTION: Put habar for sale on the <b>left</b> table.<br>"
		if(switches & BUY_STUFF)
			dat +="<A href='?src=\ref[src];choice=take'><b>Sell habar</b></A><br>"
		if(door_device && sk.fields["degree"])
			dat +="<A href='?src=\ref[src];basement_toggle=1'><b>Toggle basement door</b></A><br>"
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<BR><table border='0' width='400'>" //<b>Item list:</b>
		for(var/L in global_sidormat_list)
			if(L == "Unbuyable" && !(switches & SELL_UNBUYABLE))
				continue
			dat += "<tr><td><center><big><b>[L]</b></big></center></td><td></td><td></td></tr>"
			for(var/datum/data/stalker_equipment/prize in global_sidormat_list[L])
				if((sk.fields["faction_s"] == prize.faction && ((sk.fields["faction_s"] in special_factions) || (switches & SHOW_FACTION_EQUIPMENT))) || prize.faction == "Everyone")
					//if(rating >= prize.rating)
					if(get_assortment_level(H) >= prize.assortment_level)
						dat += "<tr><td>[prize.name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "</table>"
		dat += "</div>"

	else

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat += "[num2text(balance, 8)] RU<br>"
		dat += "<br><br><b></b><br>"
		if(switches & BUY_STUFF)
			dat +="<A href='?src=\ref[src];choice=take'><b></b></A><br>"
		if(door_device && sk.fields["degree"])
			dat +="<A href='?src=\ref[src];basement_toggle=1'><b></b></A><br>"
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<BR><table border='0' width='400'>" //<b></b>
		for(var/L in global_sidormat_list)
			if(L == "Unbuyable" && !(switches & SELL_UNBUYABLE))
				continue
			dat += "<tr><td><center><b>[L]</b></center></td><td></td><td></td></tr>"
			for(var/datum/data/stalker_equipment/prize in global_sidormat_list[L])
				if((sk.fields["faction_s"] == prize.faction && ((sk.fields["faction_s"] in special_factions) || (switches & SHOW_FACTION_EQUIPMENT))) || prize.faction == "Everyone")
					//if(rating >= prize.rating)
					if(get_assortment_level(H) >= prize.assortment_level)
						dat += "<tr><td>[prize.name_ru]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'></A></td></tr>"
		dat += "</table>"
		dat += "</div>"

	var/datum/browser/popup = new(H, "miningvendor", "SIDORMAT 3000", 450, 700)
	popup.set_content(dat)
	popup.open()
	return

/proc/get_assortment_level(var/mob/living/carbon/human/owner)
	var/datum/data/record/sk = find_record("sid", owner.sid, data_core.stalkers)
	var/assortment_level = 0


	for(var/obj/machinery/stalker/sidorpoint/controllable_area in controllable_areas)
		if(controllable_area.controlled_by == sk.fields["faction_s"] && controllable_area.control_percent == 100)
			assortment_level++

	return assortment_level

/obj/machinery/stalker/sidormat/Topic(href, href_list)
	if(..())
		return

	var/mob/living/carbon/human/H = usr

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		updateUsrDialog()
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id


	if(!sk)
		say("Activate your KPK profile.")
		updateUsrDialog()
		return

	if(!KPK.owner || (KPK.owner != H))
		say("No access.")
		updateUsrDialog()
		return

	if(href_list["choice"])
		if(href_list["choice"] == "take")
			SellItems()

	if(href_list["purchase"])
		var/datum/data/stalker_equipment/prize = locate(href_list["purchase"])

		if (!prize)
			updateUsrDialog()
			return

		if(prize.cost > sk.fields["money"])
			say("You don't have enough money to buy [prize.name].")
			updateUsrDialog()
			return

		sk.fields["money"] -= prize.cost
		balance = sk.fields["money"]
		//PoolOrNew(prize.equipment_path, itemloc2)
		new prize.equipment_path(itemloc2)

	if(href_list["basement_toggle"])
		door_device.pulsed()

	//updateUsrDialog()
	return


/obj/machinery/stalker/sidormat/proc/SellItems()
	var/mob/living/carbon/human/H = usr
	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id

	if(!sk)
		say("Activate your profile in KPK.")
		return

	if(KPK.sid != H.sid)
		say("No access.")
		return

	var/list/atom/movable/ontable = GetItemsOnTable()
	var/total_cost = GetOnTableCost(ontable)

	if(total_cost < 100)
		say("Habar was not sold.")

	for(var/atom/movable/I in ontable)
		if(I.loc != itemloc)
			continue

		sk.fields["money"] += GetCost(I)
		balance = sk.fields["money"]

		say("[I] was sold for [GetCost(I)].")

		PlaceInPool(I)
		CHECK_TICK

	if(total_cost)
		say("<b>Habar was successfully sold for [total_cost].</b>")

	updateUsrDialog()
	return

/obj/machinery/stalker/sidormat/proc/GetItemsOnTable()
	var/list/ontable = list()
	for(var/atom/movable/AM in itemloc)
		if(GetCost(AM) <= 0)
			continue

		if(istype(AM, /obj/item/clothing))
			var/obj/item/clothing/C = AM
			if((C.durability / initial(C.durability)) * 100 < 80)
				say("[AM] is too broken for sale.")
				continue

		if(istype(AM, /obj/item/weapon/storage/backpack) && AM.contents.len)
			say("Empty [AM] before selling.")
			continue

		if(istype(AM, /obj/item/ammo_box))
			var/obj/item/ammo_box/AB = AM
			if(AB.stored_ammo.len < AB.max_ammo)
				say("Fill [AB] before selling.")
				continue

		//if(istype(AM, /obj/item/weapon/reagent_containers))
		//	say("[AM] can't be sold!")
		//	continue

		ontable += AM

	return ontable

/obj/machinery/stalker/sidormat/proc/GetOnTableCost(var/list/ontable)
	//var/list/ontable = GetItemsOnTable()
	var/total_cost = 0

	for(var/atom/movable/item_on_table in ontable)
		var/cost = GetCost(item_on_table)
		if(cost)
			total_cost += cost
	return total_cost

/obj/machinery/stalker/sidormat/proc/GetCost(var/obj/item/I)
	for(var/datum/data/stalker_equipment/se in real_sidormat_items)
		if(I.type == se.equipment_path)
			return se.GetCost(I)
	return 0

/obj/machinery/stalker/sidormat/ex_act(severity, target)
	return