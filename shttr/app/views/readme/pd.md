###### PD Module Instructions

- If Pandoc is installed on the server, the PD module allows you to use any filetype that Pandoc supports in your views.
- Source pd in your view script, then use the pd method instead of v.
- The PD module supports using ESH syntax in non-html files. This has only been tested using Markdown files, but should work in any file Pandoc supports, as the HTML output from Pandoc is automatically piped into the esh method. This means that the PD module requires the ESH module to be sourced on the same view.
