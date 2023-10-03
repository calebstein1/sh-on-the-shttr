###### Usage Instructions:

- All your app files belong in the shttr/app directory tree.
- The shttr/bin and shttr/lib directories are where Shttr app files and modules live.
- In order to create a new page, run 'shttr g page [page name]' in the root of your Shttr app, it will generate the cgi-bin script and a barebones controller, as well as a blank model and view.
- Any work your model does will be available to the view partials in MODEL_DATA. This will be changing soon so that the model can create multiple variables for the view.
- Look at shttr/app for the default page, it's pretty simple, you can probably figure it out.
- Modules can be used by a model, view, or controller by sourcing the module at the top of the script (ie. ". ${SHTTR_LIB}/MODULE_NAME").
