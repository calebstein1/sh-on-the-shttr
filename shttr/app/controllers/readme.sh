. ${SHTTR_LIB}/io

parse_input

TITLE="Shttr Readme Page"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ -z $p ]; then
  p="installation"
  export p
fi

sh ${SHTTR_APP}/views/${CONTROLLER}
