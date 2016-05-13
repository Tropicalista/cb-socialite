component extends="coldbox.system.Interceptor" {

	property name="settingsService"	inject="id:settings@socialite";

	//------------------------------------------------------------------------------------------------
	public void function cbadmin_beforeLoginForm(event, interceptData) {

		prc.socialiteSettings = deserializeJson(settingsService.getSettings().getValue());

		addAsset("#event.getModuleRoot( "contentbox" )#/modules_user/cbSocialite/includes/css/socialite.css");	

		savecontent variable="buttons" {
			if( len( prc.socialiteSettings.google.client_secret ) ){
				writeOutput('<a href="socialite/provider/google" class="btn btn-block google social"><i class="fa fa-google-plus"></i> Google</a>');
			}
			if( len( prc.socialiteSettings.facebook.client_secret ) ){
				writeOutput('<a href="socialite/provider/facebook" class="btn btn-block facebook social"><i class="fa fa-facebook"></i> Facebook</a>');
			}
			if( len( prc.socialiteSettings.linkedin.client_secret ) ){
				writeOutput('<a href="socialite/provider/linkedin" class="btn btn-block linkedin social"><i class="fa fa-linkedin"></i> Linkedin</a>');
			}
			if( len( prc.socialiteSettings.github.client_secret ) ){
				writeOutput('<a href="socialite/provider/github" class="btn btn-block github social"><i class="fa fa-github"></i> Github</a>');
			}
			writeOutput('
				<br/>
				<hr/>
				<br/>
			');
		};
		appendToBuffer( buttons );

	}

}