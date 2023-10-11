. ${SHTTR_LIB}/io
. ${SHTTR_LIB}/validator
. ${SHTTR_LIB}/mailer
. ${SHTTR_LIB}/shttrdb

parse_input

TITLE="Mailer Demo"
export TITLE

. ${SHTTR_APP}/models/${CONTROLLER}

if [ "$REQUEST_METHOD" = "POST" ]; then
  if [ $validated ]; then
    mail_id=$(create_table_entry in emails_sent)
    write_data ${mail_id} email ${email} to emails_sent
    write_data ${mail_id} subject ${subject} to emails_sent
    write_data ${mail_id} message ${message} to emails_sent
    write_data ${mail_id} sent_on "$(date +%F)" to emails_sent
    send_email "$email" "$subject" "$message"
  fi
fi

. ${SHTTR_APP}/views/${CONTROLLER}
