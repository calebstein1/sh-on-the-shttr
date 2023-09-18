. ${SHTTR_LIB}/io

parse_input

name=$(fix_post_spaces "$name")
content=$(fix_post_spaces "$content")

echo "${name}\n${content}"
