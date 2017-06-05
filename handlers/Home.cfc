/**
* A normal ColdBox Event Handler
*/
component{

	property name="user" 			inject="BaseUser@socialite";
	property name="authorService" 	inject="id:authorService@cb";
	property name="securityService" inject="id:securityService@cb";
	property name="cb"				inject="cbhelper@cb";
	property name="settingsService"	inject="id:settings@cbsocialite";
	property name="socialite" 		inject="socialitemanager@socialite";

	function preHandler(){

		prc.socialiteSettings = deserializeJson(settingsService.getSettings().getValue());

	}

	function index(event,rc,prc){
		event.setView("home/index");
	}

	function auth(event,rc,prc){

		var social = socialite.init(prc.socialiteSettings).with(rc.provider);
		social.redirect();

	}

	function response(event,rc,prc){

		if( !structKeyExists( rc, "code" ) ){
			setNextEvent( "cbadmin.security" );
		}
		prc.user = socialite.init(prc.socialiteSettings).with(rc.provider).user(rc.code);

		var author = authorService.findWhere( {
			email = prc.user.email,
			isActive = true
		} );

		//check if found and return verification
		if( not isNull( author ) ){
			// Set last login date
			securityService.updateAuthorLoginTimestamp( author );
			// set them in session
			securityService.setAuthorSession( author );
		}else{
			getInstance("messagebox@cbMessagebox").error( cb.r( "messages.invalid_credentials@security" ) );
		}

		setNextEvent( "cbadmin.dashboard" );

	}

}