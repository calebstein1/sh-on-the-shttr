if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ -z $_method ]; then
    validate $content for_presence &&\
    do_redirect || do_error
  fi
fi

read_each from comments
