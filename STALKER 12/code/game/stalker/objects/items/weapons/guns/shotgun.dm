/obj/item/weapon/gun/projectile/revolver
	modifications = list("barrel_shotgun" = 0, "frame_shotgun" = 0, "grip_shotgun" = 0)

/obj/item/weapon/gun/projectile/revolver/bm16  // ������������
	name = "BM-16"
	desc = "��������� ����� - ������������. �������� ������, � ����� ��� ��&#255; �����."
	eng_desc = "The original Bm16 rifle. Heavy as a Flesh and kicking like a Boar. This double-barrel is the be-all-end-all of Tourist loot-rights!"
	icon_state = "bm16"
	item_state = "bm16"
	w_class = 4
	force = 15
	flags = CONDUCT
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	recoil = 1
	durability = 150
	sawn_desc = "����������� ���������� � ����� ����� ����������, �� ���������� ������ � ������� ���. ���� �� ����� ���������������� ����� �����&#255; � ��������."
	randomspread = 0
	spread = 12
	damagelose = 0.3
	distro = 25
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'sound/stalker/weapons/bm16_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/obrez_load.ogg'
	opensound = 'sound/stalker/weapons/unload/obrez_open.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/bm16/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/ammo_box) || istype(A, /obj/item/ammo_casing))
		//playsound(user, loadsound, 50, 1)
		chamber_round()
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)

/obj/item/weapon/gun/projectile/revolver/bm16/attack_self(mob/living/user)
	var/num_unloaded = 0
	while (get_ammo() > 0)
		var/obj/item/ammo_casing/CB
		CB = magazine.get_round(0)
		chambered = null
		CB.loc = get_turf(src.loc)
		CB.update_icon()
		num_unloaded++
	if (num_unloaded)
		playsound(user, opensound, 50, 1)
		user << "<span class='notice'>You break open \the [src] and unload [num_unloaded] shell\s.</span>"
	else
		user << "<span class='warning'>[src] is empty!</span>"

/obj/item/weapon/gun/projectile/revolver/bm16/toz34  //  ����������
	name = "TOZ-34"
	desc = "�������������� ������������ ��������� ����� � ����������� �������������� ��������. ������ ���������������� � ����� ����� �� �������������� ��������� ����� - '����������'."
	eng_desc = "This extremely common over-and-under hunting shotgun can offer better protection against mutants than a pistol, thanks to its accuracy and stopping power. Used mostly by rookies on the outskirts of the Zone."
	icon_state = "toz34"
	item_state = "toz34"
	recoil = 0.6
	force = 15
	durability = 150
	spread = 6
	damagelose = 0.15
	distro = 10
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM

/obj/item/weapon/gun/projectile/shotgun
	modifications = list("barrel_shotgun" = 0, "frame_shotgun" = 0, "grip_shotgun" = 0)

/obj/item/weapon/gun/projectile/shotgun/ithaca  //  Ithaca M37
	name = "Ithaca M37"
	desc = " Pump-action shotgun made in large numbers for the civilian, military, and police markets. It utilizes a novel combination ejection/loading port on the bottom of the gun which leaves the sides closed to the elements. Since shotshells load and eject from the bottom, operation of the gun is equally convenient for both right and left hand shooters. This makes the gun popular with left-handed shooters. The model 37 is considered one of the most durable and reliable shotguns ever produced."
	eng_desc = "���������� ����� (��������), ������������� ������ �. ���������� � 1913 ���� � ��������������� � 1915 ����. ��������� ������������� ����&#255; ������ ��������� ��������&#255; ����� � ����������� ������� ������������&#255; ��� � ������, ��� � � ����� ���� � ���� �����&#255;��� ������ ������������&#255; ����."
	icon_state = "ithacam37"
	item_state = "ithacam37"
	durability = 100
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/ithaca
	recoil = 1
	w_class = 4
	randomspread = 0
	spread = 12
	force = 15
	damagelose = 0.3
	distro = 25
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	//fire_sound = 'sound/stalker/weapons/winchester1300_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/chaser_load.ogg'
	pumpsound = 'sound/stalker/weapons/pump/ithacam37_pump.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/shotgun/chaser  //  Winchester 1300
	name = "Chaser-13"
	desc = "��������������� �������� ����� ������������� ������������, ��������� ��&#255; ���������&#255; � ����� ����������&#255;���� ������&#255;� � �����������&#255; ������� ����������. ��� ������ �������� ��������������� ���������."
	eng_desc = "A Western smoothbore shotgun that is extremely popular around the world thanks to its amazing reliability and faster reloading speed. Particularly valued for its functionality by the Zone's hunters. All of its parts are coated with an anticorrosion compound."
	icon_state = "chaser"
	item_state = "chaser"
	durability = 100
	slot_flags = SLOT_BELT|SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/chaser
	recoil = 0.8
	w_class = 4
	randomspread = 0
	spread = 10
	force = 15
	damagelose = 0.3
	distro = 16
	weapon_weight = WEAPON_MEDIUM
	//fire_sound = 'sound/stalker/weapons/winchester1300_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/chaser_load.ogg'
	pumpsound = 'sound/stalker/weapons/pump/chaser_pump.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff
	name = "sawed-off BM-16"
	desc = "����������� ���������� � ����� ����� ����������, �� ���������� ������ � ������� ���. ���� �� ����� ���������������� ����� �����&#255; � ��������."
	eng_desc = "A sawed-off hunting shotgun with two side-by-side barrels, making it lighter and more compact than a full shotgun. One of the most popular weapons among bandits due to its combination of ease of concealment and extreme effectiveness in close combat."
	sawn_state = SAWN_OFF
	weapon_weight = WEAPON_LIGHT
	item_state = "gun"
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = 3
	durability = 75
	force = 15
	spread = 20
	recoil = 2.5
	damagelose = 0.45
	distro = 35

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff/New()
	..()
	update_icon()

/obj/item/weapon/gun/projectile/shotgun/spsa
	name = "SPAS-12"
	desc = "��������������� �������������� �������� ������������ ���������&#255; � ������������ �����������&#255; ������� ������&#255; ���&#255;. ������������� ��� �� ������ �������� �� �������&#255;, ���������� ������&#255;���&#255; � �������� �������������� ������� �����&#255; ������� � ��������� ������������� �����. ���������&#255; ������� ���������� � ����������� ���������. �������&#255; �� ������� �����, ������� ���������� � ������� ����, �������� �����&#255;��� � ���� ��� ����������� �������� ������ ������ ��������."
	eng_desc = "This special purpose smoothbore automatic shotgun was designed in the second half of the 20th century and comes with pump-action and self-cocking firing modes. Used as an all-purpose weapon by the police and assault troops. Notable for its reliability and tactical flexibility. Despite its large weight, complex mechanism and considerable cost it is in demand in the Zone due to its effectiveness against mutants."
	icon_state = "spsa"	//����� ��������
	item_state = "spsa" //����� ��������
	durability = 150
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/spsa
	recoil = 0.8
	w_class = 4
	randomspread = 0
	spread = 8
	force = 15
	damagelose = 0.35
	distro = 12
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/spsa_load.ogg'
	pumpsound = 'sound/stalker/weapons/pump/spsa_pump.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

///////////////////////////// �������� //////////////////////////////////////////

/obj/item/weapon/gun/projectile/shotgun/boltaction/mosin/enfield
	name = "Lee Enfield"
	eng_desc = "The Lee–Enfield is a bolt-action, magazine-fed repeating rifle which was used and massed produced by the British during WWII. A shoddy weapon for use in the Zone, but has potential in the right hands."
	icon_state = "enfield"
	item_state = "enfield"
	durability = 200
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/enfield
	recoil = 1
	w_class = 4
	randomspread = 0
	spread = 3
	force = 15
	damagelose = 0.1
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/bolt_load.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'
	can_scope = 1

/obj/item/weapon/gun/projectile/shotgun/automatic/sks  // SKS
	name = "SKS"
	desc = "The SKS is a Soviet semi-automatic carbine chambered for the 7.62x39mm round, designed in 1943 by Sergei Gavrilovich Simonov. The SKS-45 was manufactured at Tula Arsenal from 1949 to 1958 and at Izhevsk Arsenal in just 1953 and 1954, resulting in a total Soviet production of about 2.7 million carbines. In the early 1950s, the Soviets took the SKS carbine out of front-line service and replaced it with the AK-47; however, the SKS remained in second-line service for decades."
	eng_desc = "The SKS is a Soviet semi-automatic carbine chambered for the 7.62x39mm round, designed in 1943 by Sergei Gavrilovich Simonov. The SKS-45 was manufactured at Tula Arsenal from 1949 to 1958 and at Izhevsk Arsenal in just 1953 and 1954, resulting in a total Soviet production of about 2.7 million carbines. In the early 1950s, the Soviets took the SKS carbine out of front-line service and replaced it with the AK-47; however, the SKS remained in second-line service for decades."
	icon_state = "sks"
	item_state = "sks"
	fire_sound = 'sound/stalker/weapons/sks_shot.ogg'
	durability = 200
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/sks
	can_suppress = 0
	fire_delay = 1.2
	durability = 150
	slot_flags = SLOT_BACK
	force = 15
	origin_tech = "combat=5;materials=1"
	pin = /obj/item/device/firing_pin
	recoil = 0.5
	w_class = 4
	randomspread = 0
	spread = 2
	damagelose = 0.1
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	loadsound = 'sound/stalker/weapons/load/bolt_load.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/shotgun/boltaction/mosin/sawnoff
	name = "Mosin obrez"
	desc = "The Mosin system rifle is a magazine-loaded weapon with manual reloading. A fairly typical example of the Russian and Soviet weapons idea, when convenience in handling weapons and ergonomics were sacrificed to reliability, ease of production, development and cheapness. This one's barrel and stock has been sawn-off for ease of transportation, albeit at the cost of accuracy and comfortability."
	eng_desc = "The Mosin system rifle is a magazine-loaded weapon with manual reloading. A fairly typical example of the Russian and Soviet weapons idea, when convenience in handling weapons and ergonomics were sacrificed to reliability, ease of production, development and cheapness. This one's barrel and stock has been sawn-off for ease of transportation, albeit at the cost of accuracy and comfortability."
	sawn_state = SAWN_OFF
	weapon_weight = WEAPON_LIGHT
	icon_state = "sawnmosin"
	item_state = "moistnugget"
	slot_flags = SLOT_BELT
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/mosin
	w_class = 3
	durability = 100
	force = 15
	spread = 25
	recoil = 4.5
	damagelose = 0.15
	can_suppress = 0
	can_scope = 0
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/bolt_load.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'


/obj/item/weapon/gun/projectile/automatic/saiga  // Saiga-12
	name = "Saiga-12"
	desc = "Semi-automatic 12ga shotgun with folding stock and firing mechanism safety lock that only allows firing from extended stock position. Features short 430mm barrel."
	eng_desc = "Semi-automatic 12ga shotgun with folding stock and firing mechanism safety lock that only allows firing from extended stock position. Features short 430mm barrel."
	icon_state = "saiga"
	item_state = "saiga"
	colored = 0//"normal"
	slot_flags = SLOT_BACK//|SLOT_BELT
	force = 15
	origin_tech = "combat=5;materials=1"
	mag_type = /obj/item/ammo_box/magazine/stalker/saiga
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	can_suppress = 0
	can_unsuppress = 0
	fire_delay = 2.5
	pin = /obj/item/device/firing_pin
	durability = 120
	w_class = 4
	spread = 6
	recoil = 0.5
	randomspread = 0
	damagelose = 0.45
	distro = 15
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	drawsound = 'sound/stalker/weapons/draw/ak74_draw.ogg'