component extends="coldbox.system.Interceptor" {

	//------------------------------------------------------------------------------------------------
	public void function cbadmin_beforeLoginContent(event, interceptData) {

			savecontent variable="buttons" {
				writeOutput('
					<div class="container-fluid">
					<div class="col-md-4 col-md-offset-4">
					<a href="socialite/provider/facebook" class="btn btn-primary">Facebook</a>
					<a href="socialite/provider/google" class="btn btn-danger">Google</a>
					<a href="socialite/provider/linkedin" class="btn btn-primary">Linkedin</a>
					<a href="socialite/provider/github" class="btn btn-warning">Github</a>
					</div>
					</div>
				');
			};
			appendToBuffer( buttons );

	}

}