###### Installation Instructions:

- Make sure you have a web server configured and running with CGI enabled, the cgi-bin dir should be in /usr/lib (this is the default for apache2).
- Configure your server so that the DirectoryIndex points to /cgi-bin/index.sh.
- Download [Shttr CLI](https://github.com/calebstein1/shttr){target=_blank} and add it to your PATH.
- Run `shttr n [app name]` to create a new Shttr app that's populated with this demo site.
- You can specify a default css framework other than Pico.css by running `shttr n [app name] --tailwind`, or `shttr n [app name] --bootstrap`.
- Add your server's ssh login information to shttr-config in the format user@example.com (delete the example entry).
- Run `shttr d` in the project's root to deploy the demo app to your server. If all went well, you should be able to navigate to your domain and see the demo site.
- If you plan on using ShttrDB with your site, you'll need to run `shttr db:init` to set up the ShttrDB directory on the server.
- If the demo worked, go ahead and delete/modify the demo files and create your app!
