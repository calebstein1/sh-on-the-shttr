###### ESH Module Instructions:

- ESH is the markup language used in Shttr view partials.
- Use the syntax ((esh)ENV_VAR) in your view html partial files, and it will be replaced with the content of the environment variable.
- Sourcing the ESH module automatically generates the correct Content-Type http header, and so it is necessary to source the ESH module in each of your view scripts.
- After sourcing the ESH module in a view script, simply use the v method for each of your html partials.
