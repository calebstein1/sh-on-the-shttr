###### IO Module Instructions:

- The parse_input method reads both the query string and post data and makes all parameters available as environment variables.
- If any of the parameters passed attempt to overwrite an already existing environment variable, the page will crash with a 500 error. This is for security.
- The fix_post_spaces method is a small method that simply replaces "+" with a space in whatever string is passed into it. This is needed since post data is read in as a URL encoded string.
- The write_file method takes any data as an input and writes it to a file named the first 16 characters of the data's checksum under the ${SHTTR_APP}/assets/storage directory in a folder titled the name of the current controller script (ie. /var/www/shttr/assets/storage/local-storage.sh/0123456789abcdef).
- The delete_file method takes a filename and deletes the file under the current controller's directory in ${SHTTR_APP}/assets/storage. The controller will need to calculate the first 16 characters of the checksum of the data in order to determine the filename.
- Note that the IO module is under development and will likely change when the Accounts module is released to accommodate user accounts owning specific files.
- If you're using Turbo as your frontend framework, as is the default configuration, you'll need to send a 303 response with a successful POST. This currently happens at the top of the main calling script in cgi-bin (you can see an example in cgi-bin/local-storage.sh), but this will change as well when the Validator module is released.
