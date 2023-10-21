if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ "$_action" = "sign_up" ]; then
    validate $name for_presence &&\
    validate $username for_presence &&\
    validate $password for_length greater_than 7 &&\
    do_redirect || do_error
  elif [ "${_action}" = "sign_in" ]; then
    validate $username for_presence &&\
    validate $password for_length greater_than 7 &&\
    do_redirect || do_error
  fi
fi
