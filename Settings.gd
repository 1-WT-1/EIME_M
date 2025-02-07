extends "res://Settings.gd"

# Mod version
const EIME_M_VERSION = "0.3.0"


# You may want to change many of the variable names to provide a unique identifier
# Make sure anything read by the ModMain is consistent with this file or they will not work
# These are default config values
# Any value not set in the config file will generate the missing values exactly as these are
var EIME_M_Config = {
	"settings":{
		"EIRename-Y":true,
		"addToUsedShipPool":true,
	}, 
}

# The config file name. Make sure you set something unique
var EIME_M_Path = "user://EIME_M_settings.cfg"
var EIME_M_File = ConfigFile.new()

func _ready():
	loadEIME_M_FromFile()
	saveEIME_M_ToFile()


func saveEIME_M_ToFile():
	for section in EIME_M_Config:
		for key in EIME_M_Config[section]:
			EIME_M_File.set_value(section, key, EIME_M_Config[section][key])
	EIME_M_File.save(EIME_M_Path)


func loadEIME_M_FromFile():
	var error = EIME_M_File.load(EIME_M_Path)
	if error != OK:
		Debug.l("EIME_M_ Mod: Error loading settings %s" % error)
		return 
	for section in EIME_M_Config:
		for key in EIME_M_Config[section]:
			EIME_M_Config[section][key] = EIME_M_File.get_value(section, key, EIME_M_Config[section][key])
	loadEIME_M_KeymapFromConfig()

# Keybind setting handlers
func loadEIME_M_KeymapFromConfig():
	for action_name in EIME_M_Config.input:
		InputMap.add_action(action_name)
		for key in EIME_M_Config.input[action_name]:
			var event = InputEventKey.new()
			event.scancode = OS.find_scancode_from_string(key)
			InputMap.action_add_event(action_name, event)
	emit_signal("controlSchemeChaged")
