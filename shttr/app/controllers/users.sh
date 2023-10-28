. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/shttrdb
. ${SHTTR_LIB}/validator
. ${SHTTR_LIB}/accounts
. ${SHTTR_LIB}/mailer

parse_input

TITLE="User Accounts Demo"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

check_sign_in
if [ $signed_in -eq 1 ]; then
  do_redirect to "/account"
fi

p=${REQUEST_URI##*/}
if [ "$p" = "users" ]; then
  p="register"
fi
export p

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ "$_action" = "register" ]; then
    if [ $validated ]; then
      register "${username}" "${password}" "/users/sign_in" &&\
      user_id=$(find_by username "$(url_string_decode ${username})" from users) &&\
      write_data $user_id name $name to users &&\
      send_email "${username}" "Welcome to Shttr!" "You just registered for Shttr, congratulations!\n\nShell on the Shttr"
    fi
  elif [ "$_action" = "sign_in" ]; then
    if [ $validated ]; then
      sign_in "${username}" "${password}" "/account"
    fi
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
