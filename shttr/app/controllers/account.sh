. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/shttrdb
. ${SHTTR_LIB}/validator
. ${SHTTR_LIB}/accounts

parse_input
check_sign_in

TITLE="Account Page Demo"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ "$_action" = "sign_out" ]; then
    sign_out "/users/sign_in"
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
