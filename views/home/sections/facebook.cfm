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
    <input type="hidden" value="#cgi.http_host#/socialite/provider/response/facebook" name="facebook.redirect_url">
    <!--- Redirect Url --->
    #html.textField( 
        name="facebook.redirect_url",
        label="Redirect Url:",
        placeholder="#cgi.http_host#/socialite/provider/response/facebook",
        value="#prc.socialiteSettings.facebook.redirect_url#",
        class="form-control",
        title="The Facebook redirect url: your domain + /socialite/provider + /response/facebook",
        wrapper="div class=controls",
        labelClass="control-label",
        groupWrapper="div class=form-group"
    )#

</fieldset>
</cfoutput>