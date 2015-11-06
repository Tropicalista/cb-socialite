<cfoutput>
<fieldset>
    <legend><i class="fa fa-facebook fa-lg"></i>  Facebook Options</legend>
    
    <!--- Client Id --->
    #html.textField( 
        name="facebook.client_id",
        label="Client Id:",
        value=prc.socialiteSettings.facebook.client_id,
        class="form-control",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

    <!--- Client Secret --->
    #html.textField( 
        name="facebook.client_secret",
        label="Client Secret:",
        value=prc.socialiteSettings.facebook.client_secret,
        class="form-control",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

    <!--- Redirect Url --->
    #html.textField( 
        name="facebook.redirect_url",
        label="Redirect Url:",
        value=prc.socialiteSettings.facebook.redirect_url,
        class="form-control",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

</fieldset>
</cfoutput>