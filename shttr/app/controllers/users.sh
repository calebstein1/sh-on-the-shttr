. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/shttrdb
. ${SHTTR_LIB}/validator
. ${SHTTR_LIB}/accounts
. ${SHTTR_LIB}/mailer

parse_input

TITLE="User Accounts Demo"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}
export MODEL_DATA

if [ -z $p ]; then
  p="sign_up"
  export p
fi

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ $validated ]; then
    register "${username}" "${password}" "/cgi-bin/account.sh" &&\
    send_email "${username}" "Welcome to Shttr!" "You just registered for Shttr, congratulations!\n\nShell on the Shttr"
  fi
fi

sh ${SHTTR_APP}/views/${CONTROLLER}
