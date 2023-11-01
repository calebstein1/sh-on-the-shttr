use io

parse_input

TITLE="Shttr Readme Page"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ -z $p ]; then
  p="installation"
  export p
fi

. ${SHTTR_APP}/views/${CONTROLLER}
