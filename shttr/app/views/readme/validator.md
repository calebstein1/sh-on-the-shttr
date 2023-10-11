###### Validator Module Instructions:

- The Validator module allows for server side validations of form inputs, though it's still a good idea to use HTML5 form validators as well.
- Currently the Validator module supports validating for presence and length.
- To use the presence validator, within an if statement to check that $REQUEST_METHOD is POST, use the syntax `validate $form_field for_presence`.
- To use the length validator, within the same if statement described above, use the syntax `validate $form_field for_length [greater_than, less_than, equal_to] $desired_length`.
- Run each of your needed validators sequentially, seperated by the && logical operator, and finish the list of validators with `do_redirect || do_error`, as is shown in the local-storage example (found in its model).
- Within the controller, after the model runs, write an if statement to check for $validated (`if [ $validated ]; then`), and in that if block, write any database writes or any other logic to be executed upon a successful validation.
- If your form does not require validations, you'll still need to source the Validator module and run `do_redirect` before the view script.
