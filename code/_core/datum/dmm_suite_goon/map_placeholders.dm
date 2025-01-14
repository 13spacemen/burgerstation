

//-- Map Placeholders ----------------------------------------------------------

//-- Used to store meta data in dmm files --------
/obj/dmm_suite/comment
	icon = 'icons/obj/markers/map_editor.dmi'
	icon_state = "comment"
	invisibility = 101
	plane = PLANE_HUD
	anchored = 2
	var/coordinates
	var/dimensions
	New()
		. = ..()
		// Must assign at runtime so initial() != runtime when saving
		icon = null
	Finalize()
		qdel(src)

/turf/dmm_suite/
	invisibility = 0


//-- Used in generating turf underlay stacks -----
/turf/dmm_suite/underlay

//-- Fills maps when writing with IGNORE_TURFS ---
/turf/dmm_suite/clear_turf
	icon = 'icons/obj/markers/map_editor.dmi'
	icon_state = "clear_turf"

//-- Destroys walls underneath, if any. ----------
/turf/dmm_suite/no_wall
	icon = 'icons/obj/markers/map_editor.dmi'
	icon_state = "no_wall"

/area/dmm_suite
	invisibility = 0

//-- Fills maps when writing with IGNORE_AREAS ---
/area/dmm_suite/clear_area
	name = "CLEAR AREA"
	icon = 'icons/obj/markers/map_editor.dmi'
	icon_state = "clear_area"