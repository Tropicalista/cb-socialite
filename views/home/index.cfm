<cfoutput>

<div class="col-md-8">

	#html.startForm(name="SocialiteSettingsForm", action=prc.CBHelper.buildModuleLink('Socialite', 'settings.saveSettings'))#
	#html.anchor(name="top")#
	
	<div class="panel panel-default">

        <div class="panel-heading">
            <h3 class="panel-title">Social settings</h3>
        </div>

        <div class="panel-body">

            <div class="tab-wrapper tab-left tab-primary">

                <ul class="nav nav-tabs">
                    <li class="active">
                    	<a href="##facebook" data-toggle="tab"><i class="fa fa-facebook"></i> Facebook</a>
                    </li>
                    <li>
                        <a href="##google" data-toggle="tab"><i class="fa fa-google"></i> Google</a>
                    </li>
                    <li>
                        <a href="##linkedin" data-toggle="tab"><i class="fa fa-linkedin"></i> Linkedin</a>
                    </li>
                    <li>
                        <a href="##github" data-toggle="tab"><i class="fa fa-github"></i> Github</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="facebook">
                        #renderView( "home/sections/facebook" )#
                    </div>
                    <div class="tab-pane" id="google">
                        #renderView( "home/sections/google" )#
                    </div>
                    <div class="tab-pane" id="linkedin">
                        #renderView( "home/sections/linkedin" )#
                    </div>
                    <div class="tab-pane" id="github">
                        #renderView( "home/sections/github" )#
                    </div>

                    <!--- Button Bar --->
                    <div class="form-actions">
                        #html.submitButton(value="Save Settings", class="btn btn-danger" )#
                    </div>                    
                </div>

            </div>

        </div>

    </div>

	#html.endForm()#

</div>
<!--End sidebar-->
<!--============================Main Column============================-->
<div class="main_column" id="main_column">
	<div class="box">
		<div class="header">
			<img src="<!---#prc.cbroot#/includes/images/comments_32.png--->" alt="sofa" width="30" height="30" />
			Socialite Settings
		</div>
		<div class="body">

			<p>From here you can control how the Google Analytics operates.</p>

			<div class="body_vertical_nav clearfix">
				<ul class="vertical_nav">
					<li class="active"><a href="##global_settings"><img src="#prc.cbRoot#/includes/images/settings_black.png" alt="modifiers"/> Global Settings</a></li>
				</ul>
				<div class="main_column">
					<!-- Content area that wil show the form and stuff -->
					<div class="panes_vertical">
						<div>
							<fieldset>
								<legend><img src="#prc.cbRoot#/includes/images/settings_black.png" alt="modifiers"/> <strong>Global Settings</strong></legend>
								#html.textField(name = "trackingId", label = "Tracking Id", value = "", class = "textfield", size = "30")#<br/>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
#html.endForm()#
</cfoutput>