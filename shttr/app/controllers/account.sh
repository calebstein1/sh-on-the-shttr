use io, shttrdb, validator, accounts, form

parse_input
check_sign_in

TITLE="Account Page Demo"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ "$_action" = "sign_out" ]; then
    sign_out "/cgi-bin/users.sh?p=sign_in"
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
