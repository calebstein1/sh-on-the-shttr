for file in $(/bin/ls -t ${SHTTR_APP}/assets/storage/${CONTROLLER}); do
  comment=${SHTTR_APP}/assets/storage/${CONTROLLER}/${file}
  filename=$(sha256sum $comment | head -c 16)
  message="${message}<p><strong>$(head -n1 ${comment}):</strong> $(tail -n1 ${comment}) <button class='secondary' data-turbo-confirm='Are you sure?' form='${filename}' style='padding:4px;'>Delete</button></p><form id='${filename}' action='/cgi-bin/local-storage.sh' method='post'><input type='hidden' name='_method' value='delete'><input type='hidden' name='id' value='${filename}'></form>"
done

MODEL_DATA=$(url_string_decode "$message")
export MODEL_DATA

name=$(url_string_decode "$name")
content=$(url_string_decode "$content")

FORM_DATA=$(echo "${name}\n${content}")
export FORM_DATA
