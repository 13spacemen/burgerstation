/mob/living/advanced/proc/add_species_buttons()

	var/species/S = SPECIES(species)

	for(var/v in S.spawning_buttons)
		var/obj/hud/button/B = new v
		B.update_owner(src)

/mob/living/advanced/proc/add_color_scheme_buttons()
	for(var/v in color_scheme_buttons)
		var/obj/hud/button/B = new v
		B.update_owner(src)

/mob/living/advanced/proc/remove_color_scheme_buttons()
	for(var/k in buttons)
		var/obj/hud/button/B = k
		if(B.type in color_scheme_buttons)
			B.update_owner(null)

/mob/living/advanced/proc/add_ability_buttons()

	var/species/S = SPECIES(species)

	for(var/v in S.spawning_ability_buttons)
		var/obj/hud/button/ability/B = new v
		B.update_owner(src)

/mob/living/advanced/proc/add_chargen_buttons(var/list/blacklist=list())

	var/species/S = SPECIES(species)

	var/list/local_list = chargen_buttons - blacklist

	for(var/v in local_list)
		var/obj/hud/button/chargen/B = v
		var/chargen_flags = initial(B.chargen_flags)
		if(!chargen_flags || (chargen_flags & S.flags_chargen))
			B = new v
			B.update_owner(src)

/mob/living/advanced/proc/remove_chargen_buttons()
	for(var/k in buttons)
		var/obj/hud/button/B = k
		if(B.type in chargen_buttons)
			B.update_owner(null)

/mob/living/advanced/proc/remove_all_buttons()
	for(var/k in buttons)
		var/obj/hud/button/B = k
		B.update_owner(null)


//Inventory
/mob/living/advanced/proc/toggle_inventory(var/show_flags_whitelist=FLAG_HUD_ALL,var/show_flags_blacklist=FLAG_HUD_NONE,var/speed = SECONDS_TO_DECISECONDS(1))
	show_inventory(!draw_inventory,show_flags_whitelist,show_flags_blacklist,speed)

/mob/living/advanced/proc/show_inventory(var/show=TRUE,var/show_flags_whitelist,var/show_flags_blacklist,var/speed=SECONDS_TO_DECISECONDS(1))
	draw_inventory = show
	for(var/k in inventories_by_id)
		var/obj/hud/inventory/I = inventories_by_id[k]
		if(I.flags_hud & show_flags_whitelist && !(I.flags_hud & show_flags_blacklist))
			I.show(show,speed)

/mob/living/advanced/show_hud(var/show,var/show_flags_whitelist=FLAG_HUD_ALL,var/show_flags_blacklist=FLAG_HUD_NONE,var/speed=SECONDS_TO_DECISECONDS(1))
	. = ..()
	show_inventory(show,show_flags_whitelist,show_flags_blacklist,speed)
