<cfoutput>

<div class="col-md-8">

	#html.startForm(name="SocialiteSettingsForm", action=prc.CBHelper.buildModuleLink('cbSocialite', 'settings.saveSettings'))#
	#html.anchor(name="top")#
	
	<div class="panel panel-default">

        <div class="panel-heading">
            <h3 class="panel-title">Social settings</h3>
        </div>

        <div class="panel-body">

            <div class="tab-wrapper tab-left tab-primary">

                <ul class="nav nav-tabs">
                    <li class="active">
                    	<a href="##facebook" data-toggle="tab"><i class="fa fa-facebook"></i> <span class="hidden-xs">Facebook</span></a>
                    </li>
                    <li>
                        <a href="##google" data-toggle="tab"><i class="fa fa-google"></i> <span class="hidden-xs">Google</span></a>
                    </li>
                    <li>
                        <a href="##linkedin" data-toggle="tab"><i class="fa fa-linkedin"></i> <span class="hidden-xs">Linkedin</span></a>
                    </li>
                    <li>
                        <a href="##github" data-toggle="tab"><i class="fa fa-github"></i> <span class="hidden-xs">Github</span></a>
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

</cfoutput>