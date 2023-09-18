#!/bin/sh

if [ "$REQUEST_METHOD" = "POST" ]; then
  printf "Status:303\nLocation: ${SCRIPT_NAME}?success=Message sent successfully!\n"
fi

printf 'Content-Type: text/html\n\n'

SHTTR_BIN="/var/www/shttr/bin"
SHTTR_LIB="/var/www/shttr/lib"
SHTTR_APP="/var/www/shttr/app"
SHTTR_ASSETS="/app/assets"
export SHTTR_BIN
export SHTTR_LIB
export SHTTR_APP
export SHTTR_ASSETS

sh ${SHTTR_BIN}/shttr