TITLE="Shttr Default Page"
export TITLE

MODEL_DATA=$(sh ${SHTTR_APP}/models/${CONTROLLER})
export MODEL_DATA

sh ${SHTTR_APP}/views/${CONTROLLER}
