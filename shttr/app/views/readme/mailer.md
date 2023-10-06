###### Mailer Module Instructions:

- The send_email method takes three arguments: email address, subject, and message, in that order. It then sends an email to the supplied email address.
- The send_email method uses the url_string_decode method found in the IO module to process the email address, subject, and message, so the IO module will need to be sourced on any page that's using the Mailer module.
- The mailer module requires a functioning postfix server as well as the mail command, and it's a good idea to make sure DKIM, DMARC, and SPF are set up. That is all way beyond the scope of these instructions, but following steps 1-3 of the Setup an Email Server course on [landchad.net](https://landchad.net){target=_blank} will get your server where it needs to be to send emails with the mailer module.
