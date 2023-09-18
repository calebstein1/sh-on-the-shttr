. ${SHTTR_LIB}/io

TITLE="Local Storage Demo"
export TITLE

FORM_DATA=$(sh ${SHTTR_APP}/models/local-storage-form.sh)
MODEL_DATA=$(sh ${SHTTR_APP}/models/${CONTROLLER})
export FORM_DATA
export MODEL_DATA

if [ "$REQUEST_METHOD" = "POST" ]; then
  write_file "$FORM_DATA"
fi

sh ${SHTTR_APP}/views/${CONTROLLER}
