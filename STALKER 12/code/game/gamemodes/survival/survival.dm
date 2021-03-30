/**
 * Survival gamemode.
 *
 * No special antagonists.
**/

/datum/game_mode/survival
	name = "Zone Survival"
	config_tag = "zone_survival"
	required_players = 0
	//reroll_friendly = 1

/datum/game_mode/announce()
	world << "<b>Dawn breaks, and thus another day is marked.</b>"

/datum/game_mode/extended/pre_setup()
	return 1

/datum/game_mode/extended/post_setup()
	..()