. ${SHTTR_LIB}/io

parse_input

TITLE="Shttr Readme Page"
export TITLE

MODEL_DATA=$(sh ${SHTTR_APP}/models/${CONTROLLER})
export MODEL_DATA

if [ -z $p ]; then
  p="installation"
  export p
fi

sh ${SHTTR_APP}/views/${CONTROLLER}
