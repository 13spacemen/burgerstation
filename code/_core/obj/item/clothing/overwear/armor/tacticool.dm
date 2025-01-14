// Tacticool or slavic armor for hardened ruskies. Thank you stalkerbuild and Parrot very cool.
/obj/item/clothing/overwear/armor/slavticool
	name = "\improper 'Slav-safe' LLC body armor"
	icon = 'icons/obj/item/clothing/suit/squad_armor.dmi'
	desc = "Protecting against the capitalism since 2238."
	desc_extended = "A sturdy chestplate with shoulder- and knee pads of bulletproof armor. Should protect against most small arms fire. Feels lighter than standard-issued vests."

	protected_limbs = list(BODY_TORSO,BODY_GROIN,BODY_LEG_LEFT,BODY_LEG_RIGHT)

	armor = /armor/military/medium/hard

	size = SIZE_3

	value = 300

/obj/item/clothing/head/helmet/slavticool
	name = "\improper 'Slav-safe' LLC combat helmet"
	icon = 'icons/obj/item/clothing/hats/squad_helmet.dmi'
	desc = "Protecting against the capitalism since 2238."
	desc_extended = "Durable combat helmet made out of complex plastic-based bullet-resistant materials and ceramics. Should save you from a bullet or five."

	armor = /armor/military/medium/hard

	size = SIZE_2

	value = 150

/obj/item/clothing/head/helmet/slavticool/thermal
	name = "\improper 'Slav-safe' LLC thermal combat helmet"
	desc_extended = "Durable combat helmet made out of complex plastic-based bullet-resistant materials and ceramics. Should save you from a bullet or five. This model has been outfitted with an advanced thermal monocle."

	additional_clothing = list(/obj/item/clothing/glasses/thermal/thermal_rev)

	value = 250