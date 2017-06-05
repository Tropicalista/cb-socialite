<cfoutput>
<fieldset>
    <legend><i class="fa fa-facebook fa-lg"></i>  Facebook Options</legend>
    
    <!--- Client Id --->
    #html.textField( 
        name="facebook.client_id",
        label="App Id:",
        value=prc.socialiteSettings.facebook.client_id,
        class="form-control",
        title="The Facebook App ID",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#
            <p class="help-block">Example block-level help text here.</p>

    <!--- Client Secret --->
    #html.textField( 
        name="facebook.client_secret",
        label="Client Secret:",
        value=prc.socialiteSettings.facebook.client_secret,
        class="form-control",
        title="The Facebook client secret",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

    <!--- Redirect Url --->
    #html.hiddenField( 
        name="facebook.redirect_url",
        value="#cb.linkHome()#cbsocialite/provider/response/facebook"
    )#

</fieldset>
</cfoutput>