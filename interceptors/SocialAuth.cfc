component extends="coldbox.system.Interceptor" {

	property name="settingsService"	inject="id:settings@cbsocialite";

	//------------------------------------------------------------------------------------------------
	public void function cbadmin_beforeLoginForm(event, interceptData) {

		prc.socialiteSettings = deserializeJson(settingsService.getSettings().getValue());

		addAsset("#event.getModuleRoot( "cbsocialite" )#/includes/css/socialite.css");	

		savecontent variable="buttons" {
			if( len( prc.socialiteSettings.google.client_secret ) ){
				writeOutput('<a href="cbsocialite/provider/google" class="btn btn-block google social"><i class="fa fa-google-plus"></i> Google</a>');
			}
			if( len( prc.socialiteSettings.facebook.client_secret ) ){
				writeOutput('<a href="cbsocialite/provider/facebook" class="btn btn-block facebook social"><i class="fa fa-facebook"></i> Facebook</a>');
			}
			if( len( prc.socialiteSettings.linkedin.client_secret ) ){
				writeOutput('<a href="cbsocialite/provider/linkedin" class="btn btn-block linkedin social"><i class="fa fa-linkedin"></i> Linkedin</a>');
			}
			if( len( prc.socialiteSettings.github.client_secret ) ){
				writeOutput('<a href="cbsocialite/provider/github" class="btn btn-block github social"><i class="fa fa-github"></i> Github</a>');
			}
			writeOutput('
				<hr/>
			');
		};

		appendToBuffer( buttons );

	}

}