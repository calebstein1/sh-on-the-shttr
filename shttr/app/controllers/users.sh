use io, shttrdb, validator, accounts, mailer

parse_input

TITLE="User Accounts Demo"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}
export MODEL_DATA

check_sign_in
if [ $signed_in -eq 1 ]; then
  do_redirect to "/cgi-bin/account.sh"
fi

if [ -z $p ]; then
  p="sign_up"
  export p
fi

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ "$_action" = "sign_up" ]; then
    if [ $validated ]; then
      register "${username}" "${password}" "?p=sign_in" &&\
      user_id=$(find_by username "$(url_string_decode ${username})" from users) &&\
      write_data $user_id name $name to users &&\
      send_email "${username}" "Welcome to Shttr!" "You just registered for Shttr, congratulations!\n\nShell on the Shttr"
    fi
  elif [ "$_action" = "sign_in" ]; then
    if [ $validated ]; then
      sign_in "${username}" "${password}" "/cgi-bin/account.sh"
    fi
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
