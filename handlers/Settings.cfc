component{

	property name="settingsService"	inject="id:settings@socialite";

	//------------------------------------------------------------------------------------------------
	//------------------------------------------------------------------------------------------------
	public function preHandler(event, action, eventArguments) {
		var rc 	= event.getCollection();
		var prc = event.getCollection(private = true);
		prc.socialiteSettings = deserializeJson(settingsService.getSettings().getValue());
	}

	//------------------------------------------------------------------------------------------------
	//------------------------------------------------------------------------------------------------
	public function index(event,rc,prc){
		event.setView("home/index");
	}

	//------------------------------------------------------------------------------------------------
	//------------------------------------------------------------------------------------------------
	public function saveSettings(event, rc, prc) {
		
		prc.socialiteSettings = {};
		prc.socialiteSettings.google = rc.google;
		prc.socialiteSettings.facebook = rc.facebook;
		prc.socialiteSettings.linkedin = rc.linkedin;
		prc.socialiteSettings.github = rc.github;

		// Probably should not be here, and should be in the service but its here for now.
		settingsService.addSetting(prc.socialiteSettings);
		setNextEvent('cbadmin.module.socialite.settings');
	}
}