
#define CELL_VOLUME        2500 // Liters in a cell.
#define MOLES_CELLSTANDARD (ONE_ATMOSPHERE*CELL_VOLUME/(T20C*R_IDEAL_GAS_EQUATION)) // Moles in a 2.5 m^3 cell at 101.325 kPa and 20 C.

#define O2STANDARD 0.21 // Percentage.
#define N2STANDARD 0.79

#define MOLES_PHORON_VISIBLE 0.7 // Moles in a standard cell after which phoron is visible.
#define MOLES_O2STANDARD     (MOLES_CELLSTANDARD * O2STANDARD) // O2 standard value (21%)
#define MOLES_N2STANDARD     (MOLES_CELLSTANDARD * N2STANDARD) // N2 standard value (79%)
#define MOLES_O2ATMOS (MOLES_O2STANDARD*50)
#define MOLES_N2ATMOS (MOLES_N2STANDARD*50)

// These are for when a mob breathes poisonous air.
#define MIN_TOXIN_DAMAGE 1
#define MAX_TOXIN_DAMAGE 10

#define BREATH_VOLUME       0.5 // Liters in a normal breath.
#define BREATH_MOLES        (ONE_ATMOSPHERE * BREATH_VOLUME / (T20C * R_IDEAL_GAS_EQUATION)) // Amount of air to take a from a tile
#define BREATH_PERCENTAGE   (BREATH_VOLUME / CELL_VOLUME)                                    // Amount of air needed before pass out/suffocation commences.
#define HUMAN_NEEDED_OXYGEN (MOLES_CELLSTANDARD * BREATH_PERCENTAGE * 0.16)
#define HUMAN_HEAT_CAPACITY 280000 //J/K For 80kg person

#define PRESSURE_DAMAGE_COEFFICIENT 4 // The amount of pressure damage someone takes is equal to (pressure / HAZARD_HIGH_PRESSURE)*PRESSURE_DAMAGE_COEFFICIENT, with the maximum of MAX_PRESSURE_DAMAGE.
#define MAX_HIGH_PRESSURE_DAMAGE 4
#define LOW_PRESSURE_DAMAGE 0.6 // The amount of damage someone takes when in a low pressure area. (The pressure threshold is so low that it doesn't make sense to do any calculations, so it just applies this flat value).

#define MINIMUM_PRESSURE_DIFFERENCE_TO_SUSPEND (MINIMUM_AIR_TO_SUSPEND*R_IDEAL_GAS_EQUATION*T20C)/CELL_VOLUME			// Minimum pressure difference between zones to suspend
#define MINIMUM_AIR_RATIO_TO_SUSPEND 0.05 // Minimum ratio of air that must move to/from a tile to suspend group processing
#define MINIMUM_AIR_TO_SUSPEND       (MOLES_CELLSTANDARD * MINIMUM_AIR_RATIO_TO_SUSPEND) // Minimum amount of air that has to move before a group processing can be suspended
#define MINIMUM_MOLES_DELTA_TO_MOVE  (MOLES_CELLSTANDARD * MINIMUM_AIR_RATIO_TO_SUSPEND) // Either this must be active
#define MINIMUM_TEMPERATURE_TO_MOVE  (T20C + 100)                                        // or this (or both, obviously)

#define MINIMUM_TEMPERATURE_RATIO_TO_SUSPEND      0.012        // Minimum temperature difference before group processing is suspended.
#define MINIMUM_TEMPERATURE_DELTA_TO_SUSPEND      4
#define MINIMUM_TEMPERATURE_DELTA_TO_CONSIDER     0.5          // Minimum temperature difference before the gas temperatures are just set to be equal.
#define MINIMUM_TEMPERATURE_FOR_SUPERCONDUCTION   (T20C + 10)
#define MINIMUM_TEMPERATURE_START_SUPERCONDUCTION (T20C + 200)

// Must be between 0 and 1. Values closer to 1 equalize temperature faster. Should not exceed 0.4, else strange heat flow occurs.
#define FLOOR_HEAT_TRANSFER_COEFFICIENT 0.4
#define WALL_HEAT_TRANSFER_COEFFICIENT 0.0
#define DOOR_HEAT_TRANSFER_COEFFICIENT 0.0
#define SPACE_HEAT_TRANSFER_COEFFICIENT 0.2 // A hack to partly simulate radiative heat.
#define OPEN_HEAT_TRANSFER_COEFFICIENT 0.4
#define WINDOW_HEAT_TRANSFER_COEFFICIENT 0.1 // A hack for now.

// Fire damage.
#define CARBON_LIFEFORM_FIRE_RESISTANCE (T0C + 200)
#define CARBON_LIFEFORM_FIRE_DAMAGE     4

#define FOGGING_TEMPERATURE (T0C + 5)
#define MAX_FOG_TEMPERATURE (T0C - 50)

// Phoron fire properties.
#define PHORON_MINIMUM_BURN_TEMPERATURE    (T0C +  126) //400 K - autoignite temperature in tanks and canisters - enclosed environments I guess
#define PHORON_FLASHPOINT                  (T0C +  246) //519 K - autoignite temperature in air if that ever gets implemented.

// Hydrogen fire properties.
#define HYDROGEN_MINIMUM_BURN_TEMPERATURE   (T0C + 268) // 541 K - autoignite temperature in tanks and canisters
#define HYDROGEN_FLASHPOINT                 (T0C + 536) // 809 K - autoignite temperature in air

//These control the mole ratio of oxidizer and fuel used in the combustion reaction
#define FIRE_REACTION_OXIDIZER_AMOUNT	3 //should be greater than the fuel amount if fires are going to spread much
#define FIRE_REACTION_FUEL_AMOUNT		2

//These control the speed at which fire burns
#define FIRE_GAS_BURNRATE_MULT			1
#define FIRE_LIQUID_BURNRATE_MULT		0.225

//If the fire is burning slower than this rate then the reaction is going too slow to be self sustaining and the fire burns itself out.
//This ensures that fires don't grind to a near-halt while still remaining active forever.
#define FIRE_GAS_MIN_BURNRATE			0.01
#define FIRE_LIQUD_MIN_BURNRATE			0.0025

//How many moles of fuel are contained within one solid/liquid fuel volume unit
#define LIQUIDFUEL_AMOUNT_TO_MOL		0.45  //mol/volume unit

// XGM gas flags.
#define XGM_GAS_FUEL        1
#define XGM_GAS_OXIDIZER    2
#define XGM_GAS_CONTAMINANT 4
#define XGM_GAS_FUSION_FUEL 8

#define TANK_LEAK_PRESSURE     (30.*ONE_ATMOSPHERE) // Tank starts leaking.
#define TANK_RUPTURE_PRESSURE  (40.*ONE_ATMOSPHERE) // Tank spills all contents into atmosphere.
#define TANK_FRAGMENT_PRESSURE (50.*ONE_ATMOSPHERE) // Boom 3x3 base explosion.
#define TANK_FRAGMENT_SCALE    (10.*ONE_ATMOSPHERE) // +1 for each SCALE kPa above threshold. Was 2 atm.

#define NORMPIPERATE             30   // Pipe-insulation rate divisor.
#define HEATPIPERATE             8    // Heat-exchange pipe insulation.
#define FLOWFRAC                 0.99 // Fraction of gas transferred per process.

//Flags for zone sleeping
#define ZONE_ACTIVE   1
#define ZONE_SLEEPING 0

#define MAX_VENT_PRESSURE 15000 // 15000 kPa of pressure.
#define PRESSURE_ONE_THOUSAND 1000 // 1000 kPa of pressure. Allows for easier searchability.
#define PRESSURE_EXERTED 200 // 200 kPa of pressure.

// Defines how much of certain gas do the Atmospherics tanks start with. Values are in kpa per tile (assuming 20C)
#define ATMOSTANK_NITROGEN      90000 // A lot of N2 is needed to produce air mix, that's why we keep 90MPa of it
#define ATMOSTANK_OXYGEN        40000 // O2 is also important for airmix, but not as much as N2 as it's only 21% of it.
#define ATMOSTANK_CO2           25000 // CO2, PH and H2 are not critically important for station, only for toxins and alternative coolants, no need to store a lot of those.
#define ATMOSTANK_PHORON        25000
#define ATMOSTANK_PHORON_SCARCE 2500  // we're also in the middle of a phoron shortage - the old ATMOSTANK_PHORON define is staying in case someone wants to map in a phoron tank or something
#define ATMOSTANK_HYDROGEN      25000
#define ATMOSTANK_NITROUSOXIDE  40000 // N2O does have a real use now! It can be used instead of oxygen to do burns for the thrusters. This means we need more of it though, otherwise there isn't really enough.

#define ADIABATIC_EXPONENT 0.667 //Actually adiabatic exponent - 1.

#define GAS_OXYGEN				"oxygen"
#define GAS_CO2					"carbon_dioxide"
#define GAS_N2O					"sleeping_agent"
#define GAS_NITROGEN			"nitrogen"
#define GAS_NO2					"nitrogen_dioxide"
#define GAS_PHORON				"phoron"
#define GAS_HYDROGEN            "hydrogen"
#define GAS_ALIEN				"aliether"
#define GAS_STEAM				"water"
#define GAS_SULFUR				"sulfur_dioxide"
#define GAS_CHLORINE			"chlorine"
#define GAS_HELIUM				"helium"
#define GAS_DEUTERIUM			"deuterium"
#define GAS_TRITIUM				"tritium"
#define GAS_BORON				"boron"
#define GAS_HEAT                "heat" //Not a real gas, used for visual effects
#define GAS_COLD                "cold" //Not a real gas, used for visual effects

#define	PIPE_COLOR_GREY		"#ffffff"	//yes white is grey
#define	PIPE_COLOR_RED		"#ff0000"
#define	PIPE_COLOR_BLUE		"#0000ff"
#define	PIPE_COLOR_CYAN		"#00ffff"
#define	PIPE_COLOR_GREEN	"#00ff00"
#define	PIPE_COLOR_YELLOW	"#ffcc00"
#define	PIPE_COLOR_BLACK	"#444444"
#define	PIPE_COLOR_PURPLE	"#bb25af"

#define CONNECT_TYPE_REGULAR	1
#define CONNECT_TYPE_SUPPLY		2
#define CONNECT_TYPE_SCRUBBER	4
#define CONNECT_TYPE_HE			8
#define CONNECT_TYPE_FUEL		16
#define CONNECT_TYPE_AUX		32

GLOBAL_LIST_INIT(pipe_colors, list(
	"grey" = PIPE_COLOR_GREY,
	"red" = PIPE_COLOR_RED,
	"blue" = PIPE_COLOR_BLUE,
	"cyan" = PIPE_COLOR_CYAN,
	"green" = PIPE_COLOR_GREEN,
	"yellow" = PIPE_COLOR_YELLOW,
	"black" = PIPE_COLOR_BLACK,
	"purple" = PIPE_COLOR_PURPLE
))
