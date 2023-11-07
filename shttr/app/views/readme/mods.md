###### Modules Instructions:

- Shttr uses two types of modules: native and Node.
- Native modules are shell scripts that can be used to extend the functionality of your models, views, and controllers.
- Node modules are Javascript modules that are installed with npm.
- To install Node modules into your Shttr project using ShttrCLI, simply prepend `shttr` to your `npm` command. For exapmle, in install the Turn library for page transition animations, you'd use `shttr npm i @domchristie/turn`.
- Modules are imported using Shttr's `use` command. Typically this will happen at the top of your controller script.
- The `use` command takes a comma seperated list of modules (ie. `use io, validator, shttrdb, form`).
- The `use` command is used for both native and Node modules. Native modules are sourced, making their methods available to your scripts, and Node modules are made available in the variable, `node_[module name]`.
- The Node variable is to be used in your view partials. See the code for this instructions page for an example, as it uses the Turn library installed with Shttr's node integration.
- If the Node package name contains a '/', the variable will be named with the name after the '/' (ie. `use @domchristie/turn, three` will make available the variables `node_turn` and `node_three`).
- It is considered best practice for `esh` and `pd` to be imported at the top of a page's view script, and for all other modules to be imported at the top of a page's controller script, except for any Node modules which are required on all pages, which should be imported in `globals.sh`. DO NOT try to import `esh` in `globals.sh`, as `esh` automatically sets the Content-Type header, and that header needs to come last after any Status or Set-Cookie headers which are used extensively by many other native modules.
- The `npx` command, when run in any of a Shttr page's scripts, will pick up the correct prefix automatically, and so `npx` can be used to run any Node executables from your scripts if needed. You do not need to import a Node package with `use` in order to run its executables with `npx`.
