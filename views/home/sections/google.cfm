<cfoutput>
<fieldset>
    <legend><i class="fa fa-google-plus fa-lg"></i>  Google Options</legend>
    
    <!--- Client Id --->
    #html.textField( 
        name="google.client_id",
        label="Client Id:",
        value=prc.socialiteSettings.google.client_id,
        class="form-control",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

    <!--- Client Secret --->
    #html.textField( 
        name="google.client_secret",
        label="Client Secret:",
        value=prc.socialiteSettings.google.client_secret,
        class="form-control",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

    <!--- Redirect Url --->
    #html.hiddenField( 
        name="google.redirect_url",
        value="#cb.linkHome()#cbsocialite/provider/response/google"
    )#

</fieldset>
</cfoutput>