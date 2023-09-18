for file in $(/bin/ls -t ${SHTTR_APP}/assets/storage/${CONTROLLER}); do
  comment=${SHTTR_APP}/assets/storage/${CONTROLLER}/${file}
  message="${message}<p><strong>$(head -n1 ${comment}):</strong> $(tail -n1 ${comment})</p>"
done

echo $message
