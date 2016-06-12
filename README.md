# Socialite for ContentBox

A cool module to handle oauth2 authentication.

Currently support:

* Facebook
* Google
* Linkedin
* Github

Usage:

Go to module page in admin and add your credentials.

## Obtaining OAuth Keys

<img src="https://camo.githubusercontent.com/204e6b07369021b5b9eb7d228d051aca72a457ef/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f7468756d622f322f32662f476f6f676c655f323031355f6c6f676f2e7376672f3130303070782d476f6f676c655f323031355f6c6f676f2e7376672e706e67" width="150">
- Visit [Google Cloud Console](https://cloud.google.com/console/project)
- Click **CREATE PROJECT** button
- Enter *Project Name*, then click **CREATE**
- Then select *APIs & auth* from the sidebar and click on *Credentials* tab
- Click **CREATE NEW CLIENT ID** button
 - **Application Type**: Web Application
 - **Authorized redirect URI**: *http://YOUR-SITE-URL*

**Note:** Make sure you have turned on **Contacts API** and **Google+ API** in the *APIs* tab.

<hr>

<img src="http://www.doit.ba/img/facebook.jpg" width="150">
- Visit [Facebook Developers](https://developers.facebook.com/)
- Click **Apps > Create a New App** in the navigation bar
- Enter *Display Name*, then choose a category, then click **Create app**
- Click on *Settings* on the sidebar, then click **+ Add Platform**
- Select **Website**
- Enter *http://YOUR-SITE-URL* for *Site URL*

<hr>

<img src="http://blogs.unity3d.com/wp-content/uploads/2013/12/New-Microsoft-Logo.png" width="150">
- Visit [Live Connect App Management](http://go.microsoft.com/fwlink/p/?LinkId=193157).
- Click on **Create application**
- Enter an *Application name*, then click on **I accept** button
- Go to **API Settings** tab
- Enter a *Redirect URL*
- Click **Save**
- Go to **App Settings** tab to get *Client ID* and *Client Secret*

> **Note:** Microsoft does not consider `localhost` or `127.0.0.1` to be a valid URL.
As a workaround for local development add `127.0.0.1 mylocalwebsite.net` to **/etc/hosts** file
and specify `mylocalwebsite.net` as your *Redirect URL* in the **API Settings** tab.

<img src="https://camo.githubusercontent.com/7318ebef474f99229892e6bf052f0117ca86f0e4/68747470733a2f2f6769746875622e676c6f62616c2e73736c2e666173746c792e6e65742f696d616765732f6d6f64756c65732f6c6f676f735f706167652f4769744875622d4c6f676f2e706e67" width="150">
- Visit [https://github.com/settings/profile](https://github.com/settings/profile)
- Select **Applications** in the left panel
- Go to **Developer applications** tab, then click on the **Register new application** button
 - **Application name**: Your app name
 - **Homepage URL**: *http://localhost:3000*
 - **Authorization callback URL**: *http://localhost:3000*
- Click on the **Register application** button

<hr>
