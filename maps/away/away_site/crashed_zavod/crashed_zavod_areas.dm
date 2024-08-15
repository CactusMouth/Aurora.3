// ---- base area

/area/crashed_zavod
    name = "Crashed Zavod (Base)"
	requires_power = TRUE
	dynamic_lighting = TRUE
	no_light_control = FALSE
	base_turf = /turf/space
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/crashed_zavod/exterior
    name = "Exterior"
	icon_state = "exterior"

// ---- Ship

/area/crashed_zavod/dock
    name = "Docking Bay"
	icon_state = "arrivals_dock"

/area/crashed_zavod/hallway
    name = "Hallways"
	icon_state = "HallC"
	area_blurb = "You feel like you aren't alone here..."

/area/crashed_zavod/engineering
    name = "Engineering"
	icon_state = "engineering"
	area_blurb = "The hissing of pipes and wail of the hull is ever more present here."

/area/crashed_zavod/medical
    name = "Medical"
	icon_state = "medbay"
	area_blurb = "The smell of blood and rot surrounds this place."

/area/crashed_zavod/security
    name = "Security"
	icon_state = "security"

/area/crashed_zavod/eva
    name = "EVA Storage"
	icon_state = "eva"

/area/crashed_zavod/storage
    name = "Storage Bay"
	icon_state = "storage"
	area_blurb = "Towers of boxes and crates are filled within this area, all the way to the ceiling."

/area/crashed_zavod/vault
    name = "The Vault"
	icon_state = "storage"
	area_blurb = "...You must wonder, how much did it cost to renovate each ship with one of these?"

/area/crashed_zavod/bridge
    name = "Bridge"
	icon_state = "bridge"

