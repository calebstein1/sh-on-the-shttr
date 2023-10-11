if [ "$REQUEST_METHOD" = "POST" ]; then
  validate ${email} for_length greater_than 8 &&\
  validate ${subject} for_presence &&\
  validate ${message} for_presence &&\
  do_redirect || do_error
fi

MODEL_DATA=$(echo $success | sed 's/%20/ /g')
export MODEL_DATA
