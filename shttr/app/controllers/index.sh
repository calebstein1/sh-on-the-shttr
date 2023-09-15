TITLE="Shttr Default Page"
DATE=$(date)
export TITLE
export DATE

MODEL_DATA=$(sh ${SHTTR_APP}/models/${CONTROLLER})
export MODEL_DATA

sh ${SHTTR_APP}/views/${CONTROLLER}
