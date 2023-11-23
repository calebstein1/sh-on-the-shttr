###### Model Instructions

- The model script for a page is meant to handle various data tasks for the controller.
- Nothing that happens in the model _has_ to happen in the model, but it can be nice for organizational or clarity reasons to keep things like validations or ShttrDB reads within the model script. It's not necessarily uncommon for a page to have an empty model script, especially if the page doesn't have any forms or need to access the ShttrDB.
