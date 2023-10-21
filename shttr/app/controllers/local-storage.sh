. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/validator
. ${SHTTR_LIB}/shttrdb
. ${SHTTR_LIB}/accounts

parse_input
check_sign_in

TITLE="Local Storage Demo"
export TITLE

if [ "$_method" = "delete" ]; then
  do_redirect
  delete_id $comment_id from comments
fi

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ -z $_method ]; then
    if [ $validated ]; then
      file_id=$(create_table_entry in comments)
      write_data "${file_id}" name "${name}" to comments
      write_data "${file_id}" content "${content}" to comments
      write_data "${file_id}" user_id "${user_id}" to comments
    fi
  fi
fi

if [ $signed_in ]; then
  name=$(users_${user_id} name)
  export name
  export user_id
fi

. ${SHTTR_APP}/views/${CONTROLLER}
