extends "res://ships/Shipyard.gd"


func _ready():
	ships["EIME-M"] = load("res://EIME_M/ships/EIME_M.tscn")
	configAlias["EIME-M"] = "EIME"
	defaultShipConfig["EIME-M"] = {
		"config":{
			"fuel":{
				"capacity":30000.0, 
				"initial":30000.0, 
			},
			"aux":{
				"power":"SYSTEM_AUX_SMES_MK3"
			}, 
			"weaponSlot":{
				"main":{
					"type":"SYSTEM_NONE"
				}, 
				"left":{
					"type":"SYSTEM_NONE"
				}, 
				"right":{
					"type":"SYSTEM_NONE"
				}, 
			}, 
			"ammo":{
				"capacity":0.0, 
				"initial":0.0
			}, 
			"autopilot":{
				"type":"SYSTEM_AUTOPILOT_MK4"
			}, 
			"capacitor":{
				"capacity":1000.0
			}, 
			"turbine":{
				"power":1000.0
			}
		}
	}
