. ${SHTTR_LIB}/io

parse_input

TITLE="Local Storage Demo"
export TITLE

if [ "$a" = "delete" ]; then
  delete_file $id
fi

FORM_DATA=$(sh ${SHTTR_APP}/models/local-storage-form.sh)
MODEL_DATA=$(sh ${SHTTR_APP}/models/${CONTROLLER})
export FORM_DATA
export MODEL_DATA

if [ "$REQUEST_METHOD" = "POST" ]; then
  write_file "$FORM_DATA"
fi

sh ${SHTTR_APP}/views/${CONTROLLER}
