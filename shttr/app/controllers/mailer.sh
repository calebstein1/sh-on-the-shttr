. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/mailer

parse_input

TITLE="Mailer Demo"
export TITLE

MODEL_DATA=$(sh ${SHTTR_APP}/models/${CONTROLLER})
export MODEL_DATA

if [ "$REQUEST_METHOD" = "POST" ]; then
  send_email "$email" "$subject" "$message"
fi

sh ${SHTTR_APP}/views/${CONTROLLER}
