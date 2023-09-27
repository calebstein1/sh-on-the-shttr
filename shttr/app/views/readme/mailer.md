###### Mailer Module Instructions:

- The send_email method takes three arguments: email address, subject, and message, in that order. It then sends an email to the supplied email address.
- The send_email method currently expects encoded strings as would be received by the server from a form. This works well enough for the demo, but this functionality will be moved into its own method eventually as this behavior is not always desired when used for automated mailers.
- The mailer module requires a functioning postfix server as well as the mail command, and it's a good idea to make sure DKIM, DMARC, and SPF are set up. That is all way beyond the scope of these instructions, but following steps 1-3 of the Setup an Email Server course on [landchad.net](https://landchad.net){target=_blank} will get your server where it needs to be to send emails with the mailer module.
