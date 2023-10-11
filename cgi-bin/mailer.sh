#!/bin/sh

SHTTR_BIN="/var/www/shttr/bin"
SHTTR_LIB="/var/www/shttr/lib"
SHTTR_APP="/var/www/shttr/app"
SHTTR_ASSETS="/app/assets"
export SHTTR_BIN
export SHTTR_LIB
export SHTTR_APP
export SHTTR_ASSETS

sh ${SHTTR_BIN}/shttr
