/**
 * Sidorpoint.
 *
 * A miraculous radio-based machine able to vend goods to established factions in faction-controlled areas.
**/

var/list/obj/machinery/stalker/sidorpoint/controllable_areas = list()

/**
 * Sidorpoint object.
 *
 * @type /obj/machinery
**/
/obj/machinery/stalker/sidorpoint
	name = "SIDORPOINT"

	desc 		= "Radio machine allowing to establish control over a particular area and maintain trading with the controlling faction using a Sidormat."
	eng_desc 	= "Radio machine allowing to establish control over a particular area and maintain trading with the controlling faction using a Sidormat."

	icon 		= 'icons/stalker/device_new.dmi'
	icon_state 	= "radio_free"

	density		= 1
	anchored 	= 1

	var/area/location = null

	var/controlled_by		= null
	var/capturing_faction	= null
	var/control_percent		= 0

	var/unlocked_weapons	= null

	var/area_name = ""
	var/obj/machinery/stalker/sidormat/special/connected_sidormat = null

/**
 * Initialization.
**/
/obj/machinery/stalker/sidorpoint/New()
	..()

	name = "SIDORPOINT ([get_area(src).name])"
	location = locate(text2path("/area/stalker/[area_name]"))

	controllable_areas += src

	update_description()

	if (connected_sidormat == null)
		connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in location

	if (connected_sidormat)
		connected_sidormat.set_sidorpoint(src)

/**
 * Update Sidorpoint description.
**/
/obj/machinery/stalker/sidorpoint/proc/update_description()
	if (controlled_by != null)
		desc = "This area is under [get_rus_faction(controlled_by)] control by [control_percent]%"
		eng_desc = "This area is under [controlled_by] control by [control_percent]%"
	else if (control_percent != null)
		desc = "This area is being captured by [get_rus_faction(capturing_faction)]  [control_percent]%"
		eng_desc = "This area is being captured by [capturing_faction]; control by [control_percent]%"
	else
		desc = "This area can be captured."
		eng_desc = "This area can be captured."

/**
 * Use action.
**/
/obj/machinery/stalker/sidorpoint/attack_hand(mob/_user)
	if (..())
		return

	if (!istype(_user, /mob/living/carbon/human))
		say("You lack the required humanity.")
		return

	var/mob/living/carbon/human/user = _user

	if (!istype(user.wear_id, /obj/item/device/stalker_pda))
		say("The lack of an equipped PDA prevents you from using the Sidorpoint.")
		return

	var/datum/data/record/stalker_record = find_record("sid", user.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/PDA = user.wear_id

	if(!stalker_record || !PDA.owner)
		say("You must have an activated PDA profile to use the Sidorpoint.")
		return

	if(PDA.owner != user)
		say("You are not the owner of this PDA and cannot operate the Sidorpoint.")
		return

	if(control_percent == 100 && controlled_by == stalker_record.fields["faction_s"])
		say("[get_area(src).name] is already under your faction's control.")
		return

	if(capturing_faction && capturing_faction == stalker_record.fields["faction_s"])
		say("[get_area(src).name] is already being captured by your faction!")
		return

	if(!do_after(user, 10, 1, src))
		return

	capturing_faction = stalker_record.fields["faction_s"]
	add_lenta_message(null, "0", "Sidorovich", "Loners", "[capturing_faction] started capturing [get_area(src).name].")
	say("[capturing_faction] started capturing [get_area(src).name]!")

	return

/**
 * "Life" process.
**/
/obj/machinery/stalker/sidorpoint/process()
	var/area/area = get_area(src)

	if (!connected_sidormat)
		connected_sidormat = locate(/obj/machinery/stalker/sidormat/special) in location
	else
		connected_sidormat.set_sidorpoint(src)

	if (location)
		location.controlled_by = controlled_by

	update_description()
	update_icon_on_control_progress_change()

	if (!is_being_invaded())
		capturing_faction = null
		return

	if (capturing_faction && !controlled_by)
		controlled_by = capturing_faction

	if ((controlled_by == capturing_faction) && capturing_faction != null)

		control_percent += 2

		if (control_percent >= 100)

			control_percent = 100
			add_lenta_message(null, "0", "Sidorovich", "Loners", "[controlled_by] captured [area.name].")
			say("[get_area(src).name] is captured  by [controlled_by]!")
			capturing_faction = null

		return

	if (control_percent >= 1 || control_percent <= 100)
		if (capturing_faction)
			control_percent -= 2
			if (control_percent <= 0)

				control_percent = 0
				add_lenta_message(null, "0", "Sidorovich", "Loners", "[controlled_by] lost control of [area.name].")
				say("[controlled_by] lost control of [area.name]!")
				controlled_by = capturing_faction

/**
 * Update Sidorpoint icon state depending on control progress.
**/
/obj/machinery/stalker/sidorpoint/proc/update_icon_on_control_progress_change()
	switch(control_percent)
		if (100)
			icon_state = "radio_captured"
		if (80 to 99)
			icon_state = "radio_in_progress_80"
		if (60 to 80)
			icon_state = "radio_in_progress_60"
		if (40 to 60)
			icon_state = "radio_in_progress_40"
		if (20 to 40)
			icon_state = "radio_in_progress_20"
		if (1 to 20)
			icon_state = "radio_in_progress_0"
		if (0)
			icon_state = "radio_free"

/**
 * Is the area tied to the point currently being captured?
**/
/obj/machinery/stalker/sidorpoint/proc/is_being_invaded()
	if (capturing_faction == null)
		return 1

	for (var/mob/living/carbon/human/stalker in range(5, src))
		var/datum/data/record/stalker_record = find_record("sid", stalker.sid, data_core.stalkers)

		if(stalker_record && stalker_record.fields["faction_s"] == capturing_faction)
			return 1

// FIXME: Move this to own file.

/** Sidormat. Belongs in Sidormat.dm. **/

/obj/machinery/stalker/sidormat/special
	desc     = "\"Sidormat\" remote vendor, outfitted with a communication channel to an area control \"Sidorpoint\" machine."
	eng_desc = "\"Sidormat\" remote vendor, outfitted with a communication channel to an area control \"Sidorpoint\" machine."

	icon_state = "radio"

	switches = SHOW_FACTION_EQUIPMENT

	var/obj/machinery/stalker/sidorpoint/sidorpoint = null
	var/location = null

/**
 * Set Sidormat Sidorpoint.
**/
/obj/machinery/stalker/sidormat/special/proc/set_sidorpoint(var/obj/machinery/stalker/sidorpoint/_sidorpoint)
	sidorpoint = _sidorpoint
	location   = sidorpoint.location

/**
 * Interaction.
**/
/obj/machinery/stalker/sidormat/special/interact(mob/living/carbon/human/user)
	if(!sidorpoint)
		say("This vendor will not function without a relevant Sidorpoint.")
		return

	if(!istype(user.wear_id, /obj/item/device/stalker_pda))
		say("The lack of an equipped PDA prevents you from using the Sidormat.")
		return

	var/datum/data/record/stalker_record = find_record("sid", user.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/PDA = user.wear_id

	if(!stalker_record || !PDA.owner)
		say("Activate your KPK profile.")
		return

	if(PDA.owner != user)
		say("You are not the owner of this PDA and cannot operate the Sidormat.")
		return

	if(!sidorpoint.controlled_by || sidorpoint.control_percent < 100)
		say("This area is either being contested or is not controlled by anyone.")
		return

	if(sidorpoint.controlled_by != stalker_record.fields["faction_s"])
		say("This Sidormat will not cooperate with anyone other than [sidorpoint.controlled_by] members.")
		return

	..()