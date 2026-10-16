const EIME_M_NEW = {
	"name": "EIME-M",
	"alias": "EIME",
	"path": "res://EIME_M/ships/EIME_M.tscn",
	"config": {
		"config": {
			"ammo": {
				"capacity": 0.0,
				"initial": 0.0
			},
			"autopilot": {
				"type": "SYSTEM_AUTOPILOT_MK4"
			},
			"aux": {
				"power": "SYSTEM_AUX_SMES_MK3"
			},
			"capacitor": {
				"capacity": 1000.0
			},
			"fuel": {
				"capacity": 30000.0,
				"initial": 30000.0
			},
			"turbine": {
				"power": 1000.0
			},
			"weaponSlot": {
				"left": {
					"type": "SYSTEM_NONE"
				},
				"main": {
					"type": "SYSTEM_NONE"
				},
				"right": {
					"type": "SYSTEM_NONE"
				}
			}
		}
	},
	"dealer": {
		"age": 1,
		"weight": 1
	}
}

const EIME_M_USED = {
	"name": "EIME-M",
	"alias": "EIME",
	"path": "res://EIME_M/ships/EIME_M.tscn",
	"config": {
		"config": {
			"ammo": {
				"capacity": 0.0,
				"initial": 0.0
			},
			"autopilot": {
				"type": "SYSTEM_AUTOPILOT_MK4"
			},
			"aux": {
				"power": "SYSTEM_AUX_SMES_MK3"
			},
			"capacitor": {
				"capacity": 1000.0
			},
			"fuel": {
				"capacity": 30000.0,
				"initial": 30000.0
			},
			"turbine": {
				"power": 1000.0
			},
			"weaponSlot": {
				"left": {
					"type": "SYSTEM_NONE"
				},
				"main": {
					"type": "SYSTEM_NONE"
				},
				"right": {
					"type": "SYSTEM_NONE"
				}
			}
		}
	},
	"alternate_configs": [
		"EIME"
	],
	"specific_derelict_name": "EIME_M_Derelict_SRO",
	"salvage_broadcast": [
		"DIALOG_SALVAGE_EXPOSE_EIME_1",
		"DIALOG_SALVAGE_EXPOSE_EIME_2",
		"DIALOG_SALVAGE_EXPOSE_EIME_3"
	],
	"derelict": {
		"chance": 0.2,
		"minimum_chance": 0.03,
		"money": 2000000.0,
		"stock_chance": 0.9,
		"maximum_velocity": 150.0,
		"maximum_angular_velocity": 20.0,
		"gauss": 1.0,
		"allow_damage": true,
		"cause_extra_damage": true,
		"extra_kinetic_damage": 120000.0,
		"extra_emp_damage": 250000.0,
		"extra_damage_radius": 15.0,
		"rock_cluster_chance": 0.5,
		"rock_cluster_count": 45,
		"clump": false,
		"clump_velocity": 25.0,
		"ring_storm_chance": 0.5,
		"pirate_chance": 0.1,
		"rescue": false,
		"chaos": 0.65,
		"new_derelict_conversation": "res://EIME_M/comms/conversation/DerelictConversationEIMEM.tscn",
		"new_storm_beacon": "res://story/StormBeacon.tscn",
		"new_bounty": "res://ships/LifepodPirate.tscn"
	},
	"dealer": {
		"age": 10,
		"weight": 1
	}
}
