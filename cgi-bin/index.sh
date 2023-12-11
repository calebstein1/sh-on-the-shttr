#!/usr/bin/env fish

set -gx SHTTR_BIN "/usr/local/apache2/htdocs/bin"
set -gx SHTTR_LIB "/usr/local/apache2/htdocs/lib"
set -gx SHTTR_APP "/usr/local/apache2/htdocs/app"
set -gx SHTTR_ASSETS "/app/assets"

fish {$SHTTR_BIN}/shttr
