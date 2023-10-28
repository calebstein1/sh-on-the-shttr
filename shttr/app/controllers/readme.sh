. ${SHTTR_LIB}/io

parse_input

TITLE="Shttr Readme Page"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

p=${REQUEST_URI##*/}
if [ "$p" = "readme" ]; then
  p="installation"
fi
export p

. ${SHTTR_APP}/views/${CONTROLLER}
