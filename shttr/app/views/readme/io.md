###### IO Module Instructions:

- The parse_input method reads both the query string and post data and makes all parameters available as environment variables.
- If any of the parameters passed attempt to overwrite an already existing environment variable, the page will crash with a 500 error. This is for security.
- The url_string_decode method is a small method that decodes a url encoded string which is needed since post data is sent to the server as a url encoded string.
- If you're using Turbo as your frontend framework, as is the default configuration, you'll need to send a 303 response with a successful POST. This is done using the `do_redirect` method in the Validator module, usually after a series of successful validations connected with the && logical operator.
