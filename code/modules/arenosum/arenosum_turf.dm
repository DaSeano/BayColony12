/turf/simulated/floor/plating/colony/gravel
	name = "gravel path"
	icon = 'icons/turf/arenosum.dmi'
	icon_state = "gravel"
	floor_tile = null
	intact = 0

/turf/simulated/floor/plating/colony/dirt
	name = "colony sand"
	icon_state = "asteroid"
	floor_tile = null
	intact = 0


/turf/simulated/floor/plating/colony/grass //indestructable grass plating - for use in testing if grass/arenosum is still broken
	name = "sandy grass"
	icon = 'icons/turf/arenosum.dmi'
	icon_state = "sandygrass1"
	floor_tile = null
	intact = 0

/turf/simulated/floor/grass/arenosum
	name = "grass"
	icon = 'icons/turf/arenosum.dmi'
	icon_state = "sandygrass1"

	New()
		floor_tile.New() //I guess New() isn't ran on objects spawned without the definition of a turf to house them, ah well.
		icon_state = "sandygrass[pick("1","2","3","4")]"
		..()
		spawn(4)
			if(src)
				update_icon()
				for(var/direction in cardinal)
					if(istype(get_step(src,direction),/turf/simulated/floor))
						var/turf/simulated/floor/FF = get_step(src,direction)
						FF.update_icon() //so siding get updated properly