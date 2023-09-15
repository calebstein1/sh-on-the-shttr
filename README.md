# :toilet: Shell on the Shttr :toilet:

Shell on the Shttr is a cutting-edge, databaseless backend web framework built using posix compliant shell

It supports user accounts and local storage, as well as dynamically generated templates on the server

Supported frontend frameworks:
- HTML, CSS, and (maybe) Javascript
- Maybe others?

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
- Look at shttr/app for the default page, it's pretty simple, you can probably figure it out
- NOTE: user accounts and local storage have not been implemented yet, these instructions will be updated when they are

ESH Instructions:
- ESH is super simple
- Define and export an environment variable in your controller
- Use the syntax ((esh)ENV_VAR) in your view html file
- The string will magically be replaced by the value of the variable from your controller
