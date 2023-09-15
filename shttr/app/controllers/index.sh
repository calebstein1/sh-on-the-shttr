TITLE="Shttr Default Page"
DATE=$(date)
export TITLE
export DATE

sh ${SHTTR_APP}/models/${CONTROLLER}
sh ${SHTTR_APP}/views/${CONTROLLER}
