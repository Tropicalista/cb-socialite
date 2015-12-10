/**
* 
*/
component {

	// Module Properties
	this.title 				= "cbSocialite";
	this.author 			= "Francesco Pepe";
	this.webURL 			= "http://www.tropicalseo.net";
	this.description 		= "A social login module";
	this.version			= "1.0.0";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= false;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	// Module Entry Point
	this.entryPoint			= "socialite";
	this.modelNamespace		= "socialite";

	function configure(){

		// module settings - stored in modules.name.settings
		settings = {
			oauth = {
				/*facebook = {
					client_id = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					client_secret = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					redirect_url = "http://localhost/socialauth/provider/response/facebook"					
				},
				google = {
					client_id = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					client_secret = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					redirect_url = "http://localhost/socialauth/provider/response/google"					
				},
				github = {
					client_id = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					client_secret = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					redirect_url = "http://localhost/socialauth/provider/response/github"					
				},
				linkedin = {
					client_id = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					client_secret = "XXXXXXXXXXXXXXXXXXXXXXXXX",
					redirect_url = "http://127.0.0.1/socialauth/provider/response/linkedin"					
				}*/
			}
		};

		// SES Routes
		routes = [
			// Module Entry Point
			{pattern="/provider/response/:provider", handler="home",action="response"},
			{pattern="/provider/:provider", handler="home",action="auth"},
			{pattern="/", handler="home",action="index"},
			// Convention Route
			{pattern="/:handler/:action?"}
		];

		// Custom Declared Interceptors
		interceptors = [
			{class="#moduleMapping#.interceptors.SocialAuth", name="socialauth@Socialite"}
		];	

	}

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){
		// Let's add ourselves to the main menu in the Modules section
		var menuService = controller.getWireBox().getInstance("AdminMenuService@cb");
		// Add Menu Contribution
		menuService.addSubMenu(topMenu=menuService.MODULES,name="Socialite",label="Socialite",href="#menuService.buildModuleLink('Socialite','settings')#");
	}

	function onActivate() {
		var installerService = controller.getWireBox().getInstance("installerService@socialite");
		installerService.execute();
	}

	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){
		// Let's remove ourselves to the main menu in the Modules section
		var menuService = controller.getWireBox().getInstance("AdminMenuService@cb");
		// Remove Menu Contribution
		menuService.removeSubMenu(topMenu=menuService.MODULES,name="Socialite");
	}

}
