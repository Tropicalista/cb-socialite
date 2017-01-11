component accessors="true" {

	property name="settingService" inject="settings@cbsocialite";

	//------------------------------------------------------------------------------------------------
	// Constructor
	//------------------------------------------------------------------------------------------------
	public InstallerService function init() {
		return this;
	}

	//------------------------------------------------------------------------------------------------
	// Our entry point for our installation
	//------------------------------------------------------------------------------------------------
	public void function execute() transactional {
		if(!isReady()) {
			createSettings();
		}
	}

	//------------------------------------------------------------------------------------------------
	// Check to see if we have not already saved the settings, so that it is not duplicated.
	//------------------------------------------------------------------------------------------------
	public boolean function isReady() {
		var setting = settingService.findWhere({name="socialite"});
		if(isNUll(setting)) {
			return false;
		} else {
			return true;
		}
	}

	//------------------------------------------------------------------------------------------------
	// Create settings for Syntax Highlighter and add them to the CB settings
	//------------------------------------------------------------------------------------------------
	public void function createSettings() {
		var setting = {
				facebook = {
					client_id = "",
					client_secret = "",
					redirect_url = ""					
				},
				google = {
					client_id = "",
					client_secret = "",
					redirect_url = ""					
				},
				github = {
					client_id = "",
					client_secret = "",
					redirect_url = ""					
				},
				linkedin = {
					client_id = "",
					client_secret = "",
					redirect_url = ""					
				}
		};
		addSetting(setting);
	}

	public void function addSetting(required struct setting) {
		var asettings = [];
		var props = {name = "socialite", value = serializeJson(setting)};

		settingService.save( settingService.new(properties=props) );
	}

}