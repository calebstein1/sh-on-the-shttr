for file in $(/bin/ls -t ${SHTTR_APP}/assets/storage/${CONTROLLER}); do
  comment=${SHTTR_APP}/assets/storage/${CONTROLLER}/${file}
  filename=$(sha256sum $comment | head -c 16)
  message="${message}<p><strong>$(head -n1 ${comment}):</strong> $(tail -n1 ${comment}) <button class='secondary' data-turbo-confirm='Are you sure?' form='${filename}' style='padding:4px;'>Delete</button></p><form id='${filename}' action='/cgi-bin/local-storage.sh' method='post'><input type='hidden' name='_method' value='delete'><input type='hidden' name='id' value='${filename}'></form>"
done

echo $message | sed "s/%3D/=/;s/%3F/?/g;s/%27/'/g;s/%2C/,/g;s/%22/\"/g;s/%3A/:/g;s/%3B/;/g;s/%21/!/g;"
