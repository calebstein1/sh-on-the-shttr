# :toilet: Shell on the Shttr :toilet:

Shell on the Shttr is a cutting-edge, databaseless backend web framework built using shell scripts

The live demo example page can be found at [shttr.io](https://shttr.io)

Installation Instructions:
- Make sure you have a web server configured and running with CGI enabled
- Put the shttr directory in /var/www and make sure /var/www/shttr is set as your root dir
- Put the cgi-bin directory in /usr/lib (or wherever your CGI dir is configured to be)
- Modify the environment variables in cgi-bin/index.sh if necessary
- Configure your server or set up .htaccess so that the DirectoryIndex points to /cgi-bin/index.sh

Usage Instructions:
- All your app files belong in the shttr/app directory tree
- shttr/bin and shttr/lib are where files that may be updated will be
- In order to create a new page, simply copy cgi-bin/index.sh to cgi-bin/NEW-PAGE.sh, then create the new files in shttr/app
- Any work your model does will be available to the view in MODEL_DATA. Hopefully I'll be able to work it out to where the model can create several variables but it's not a priority right now.
- Look at shttr/app for the default page, it's pretty simple, you can probably figure it out
- There is now a very basic local storage system in place. It currently doesn't support any user accounts or authentication. To use it, simply make sure your ${SHTTR_ASSETS}/storage directory is writable by your web server's user account, then follow the example in the Local Storage demo.
- The send_email method in the mailer module currently expects encoded strings as would be received by the server from a form. This works well enough for the demo, but this functionality will be moved into its own method eventually as this behavior is not desired when used for automated mailers
- The mailer module requires a functioning postfix server as well as the mail command, and it's a good idea to make sure DKIM, DMARC, and SPF are set up. That is all way beyond the scope of these instructions, but following steps 1-3 of the Setup an Email Server course on [landchad.net](https://landchad.net) will get your server where it needs to be to send emails with the mailer module

ESH Instructions:
- ESH is super simple
- Define and export an environment variable in your controller
- Use the syntax ((esh)ENV_VAR) in your view html file
- The string will magically be replaced by the value of the variable from your controller
