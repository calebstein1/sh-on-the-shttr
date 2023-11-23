##### Controller Instructions:

- The Controller is where the main logic for a page resides. It is a shell script in the `shttr/app/controllers` directory.
- At its most basic, a default controller sets the page title, runs the associated model script, and finishes by running the associated view script.
- Much of the controller logic will happen within nested conditional statements, as can be seen in the `users.sh` controller example here.
- The `REQUEST_METHOD` variable is supplied by the server and should be checked to determine if the page is handling a GET or a POST request and to act accordingly.
- If validators are being used, you'll need to check for the `validated` variable being equal to 1 on a POST request.
- Likewise, when multiple forms are in use on a single page, you can use a hidden field called `_action` or similar, and then check the value of the form's variable to determine what to do on a POST request.
- It doesn't particularly matter at which point the model script is run within your logic, but there are a few things to be aware of: methods like `parse_input` and `parse_cookies` should be run before the model, that way the model will have access to any variables it will need; and if the model is performing validations, any logic involving the `validated` variable will need to be run after the model.
- Other general logic, or setting variables can happen anywhere in the script as long as running the view script is the last thing to happen.
- Remember that any variable set that you would like to access in your views must be exported to the environment in order to be directly accessible from your view partials.
