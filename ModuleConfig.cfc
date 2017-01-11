/**
* ContentBox module to perform social authentication
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
	this.entryPoint			= "cbsocialite";
	this.modelNamespace		= "cbsocialite";

	function configure(){

		// module settings - stored in modules.name.settings
		settings = {
			oauth = {

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
			{class="#moduleMapping#.interceptors.SocialAuth", name="socialauth@cbsocialite"}
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
		var installerService = controller.getWireBox().getInstance("installerService@cbsocialite");
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


	public any function onDeactivate(param) {
		
		// remove settings
		var settingService = controller.getWireBox().getInstance("SettingService@cb");
		var args = { name="cbsocialite" };
		var setting = settingService.findWhere( criteria=args );
		if( !isNull( setting ) ){
			settingService.delete( setting );
		}
		// Flush the settings cache so our new settings are reflected
		settingService.flushSettingsCache();

	}

}
