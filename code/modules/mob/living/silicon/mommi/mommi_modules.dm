/obj/item/weapon/robot_module/mommi
	name = "mobile mmi robot module"


/obj/item/weapon/robot_module/mommi/New()
	//src.modules += new /obj/item/borg/sight/meson(src)
	src.emag = new /obj/item/borg/stun(src)
	src.modules += new /obj/item/weapon/rcd/borg(src)     // Too OP
	src.modules += new /obj/item/device/flashlight(src)   // Broken
	src.modules += new /obj/item/weapon/weldingtool/largetank/cyborg(src)
	src.modules += new /obj/item/weapon/airlock_painter/cyborg(src)
	src.modules += new /obj/item/weapon/screwdriver(src)
	src.modules += new /obj/item/weapon/wrench(src)
	src.modules += new /obj/item/weapon/crowbar(src)
	src.modules += new /obj/item/weapon/wirecutters(src)
	src.modules += new /obj/item/device/multitool(src)
	src.modules += new /obj/item/device/t_scanner(src)
	src.modules += new /obj/item/device/analyzer(src)
	src.modules += new /obj/item/weapon/extinguisher(src) // Aurx sed so
	src.modules += new /obj/item/device/lightreplacer/cyborg(src)
	src.modules += new /obj/item/device/t_scanner/adv_mining_scanner(src)
	src.modules += new /obj/item/weapon/pickaxe(src)
	src.modules += new /obj/item/weapon/storage/bag/ore(src)
//	src.modules += new /obj/item/weapon/extinguisher/foam(src)
	src.modules += new /obj/item/weapon/pipe_dispenser(src)
	src.sensors += "Disable"
	src.sensors += "Night Vision"
	src.sensors += "Meson"
//	src.modules += new /obj/item/weapon/tile_painter(src)

	src.modules += new /obj/item/device/material_synth/cyborg(src)

/*
	// Added this back in since it made the MoMMI practically useless for engineering stuff.
	var/obj/item/stack/sheet/metal/cyborg/M = new /obj/item/stack/sheet/metal/cyborg(src)
	M.amount = 50
	src.modules += M

	// It's really fun to make glass windows, break them, welder them and add rods to it to repair minor damage - No-one ever
	var/obj/item/stack/sheet/rglass/cyborg/R = new /obj/item/stack/sheet/rglass/cyborg(src)
	R.amount = 50
	src.modules += R

	var/obj/item/stack/sheet/glass/cyborg/G = new /obj/item/stack/sheet/glass/cyborg(src)
	G.amount = 50
	src.modules += G
*/
	var/datum/robot_energy_storage/wire/wirestore = new /datum/robot_energy_storage/wire(src)
	var/obj/item/stack/cable_coil/cyborg/W = new /obj/item/stack/cable_coil/cyborg(src)
	W.source = wirestore
	modules += W
	storages += wirestore

	var/obj/item/areaeditor/mommiprints/B = new /obj/item/areaeditor/mommiprints
	B.loc = src //je suis spaghetti
	modules += B	//why is the loc even set to null in the first place
	fix_modules()
	return



/obj/item/weapon/robot_module/mommi/respawn_consumable(var/mob/living/silicon/robot/R)
/*	var/list/what = list (
		// /obj/item/stack/sheet/metal/cyborg,
		// /obj/item/stack/sheet/glass,
		/obj/item/stack/cable_coil/cyborg,
		// /obj/item/stack/sheet/rglass/cyborg,
	)
	for (var/T in what)
		if (!(locate(T) in src.modules))
			src.modules -= null
			var/O = new T(src)
			if(istype(O,/obj/item/weapon/cable_coil))
				O:max_amount = 50
			src.modules += O
			O:amount = 1 */
	return