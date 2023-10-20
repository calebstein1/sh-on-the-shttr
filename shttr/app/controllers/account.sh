. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/shttrdb
. ${SHTTR_LIB}/accounts

check_sign_in

TITLE="Account Page Demo"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}
export MODEL_DATA

sh ${SHTTR_APP}/views/${CONTROLLER}
