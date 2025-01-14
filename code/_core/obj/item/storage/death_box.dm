/obj/item/storage/death_box
	name = "death box"
	desc = "I died, please restart."
	desc_extended = "A special bluespace box containing items lost on a previous shift."

	icon = 'icons/obj/item/storage/death_box.dmi'
	icon_state = "locked"

	size = 1000
	weight = 100

	value = 1000

	var/used = FALSE

	var/owning_mob_name
	var/owning_mob_ckey

	is_container = TRUE

	container_max_slots = 1
	container_max_size = 0

	max_inventory_x = MAX_INVENTORY_X
	dynamic_inventory_count = MAX_INVENTORY_X*6

	value_burgerbux = 1

/obj/item/storage/death_box/get_examine_list(var/mob/examiner)
	. = ..()
	. += div("danger","Death boxes cannot be stored in banks.")
	. += div("danger","Anyone can open a death box, even if they don't own it.")

/obj/item/storage/death_box/update_inventory()
	. = ..()
	for(var/k in src.inventories)
		var/obj/hud/inventory/I = k
		if(length(I.contents))
			return .
	qdel(src)

/obj/item/storage/death_box/Finalize()
	. = ..()
	prune_inventory()

/obj/item/storage/death_box/get_examine_list(var/mob/examiner)
	. = ..()
	if(owning_mob_name)
		. += div("notice","This box belongs to [owning_mob_name].")

	. += div("notice","It holds [length(inventories)] objects.")


/obj/item/storage/death_box/Finalize()
	. = ..()
	update_sprite()
	if(owning_mob_name) name = "[initial(name)] ([owning_mob_name])"

/obj/item/storage/death_box/update_icon()
	. = ..()
	if(used)
		icon_state = "unlocked"
	else
		icon_state = "locked"
