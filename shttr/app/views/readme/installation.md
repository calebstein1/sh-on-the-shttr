###### Installation Instructions:

- Make sure you have a web server configured and running with CGI enabled.
- Put the shttr directory in /var/www and make sure /var/www/shttr is set as your root dir.
- Put the cgi-bin directory in /usr/lib (or wherever your CGI dir is configured to be).
- Modify the environment variables in cgi-bin/index.sh if necessary.
- Configure your server or set up .htaccess so that the DirectoryIndex points to /cgi-bin/index.sh.
