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

    <input type="hidden" value="#cgi.http_host#/socialite/provider/response/google" name="google.redirect_url">
    <!--- Redirect Url --->
    #html.textField( 
        name="google.redirect_url",
        label="Redirect Url:",
        placeholder="#cgi.http_host#/socialite/provider/response/google",
        value="#prc.socialiteSettings.google.redirect_url#",
        class="form-control",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

</fieldset>
</cfoutput>