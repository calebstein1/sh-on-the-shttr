. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/validator
. ${SHTTR_LIB}/shttrdb

parse_input

TITLE="Local Storage Demo"
export TITLE

if [ "$_method" = "delete" ]; then
  do_redirect
  delete_id $id from comments
fi

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ -z $_method ]; then
    if [ $validated ]; then
      file_id=$(create_table_entry in comments)
      write_data "${file_id}" name "${name}" to comments
      write_data "${file_id}" content "${content}" to comments
    fi
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
