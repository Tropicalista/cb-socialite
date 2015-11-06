component extends="contentbox.models.system.SettingService" accessors="true" singleton {

	//------------------------------------------------------------------------------------------------
	// Add our settings to the CB settings entity
	//------------------------------------------------------------------------------------------------
	public void function addSetting(required struct setting) {
		var settings = getSettings();
		settings.setValue(serializeJson(setting));
		save( settings );
	}

	//------------------------------------------------------------------------------------------------
	// get All our settings back from CB settings
	//------------------------------------------------------------------------------------------------
	public struct function getSettings() {
		var settings = findWhere({name="socialite"});
		return settings;
	}
}