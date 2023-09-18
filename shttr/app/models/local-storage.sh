for file in $(/bin/ls -t ${SHTTR_APP}/assets/storage/${CONTROLLER}); do
  comment=${SHTTR_APP}/assets/storage/${CONTROLLER}/${file}
  message="${message}<p><strong>$(head -n1 ${comment}):</strong> $(tail -n1 ${comment}) <a href=/cgi-bin/local-storage.sh?a=delete\&id=$(sha256sum $comment | head -c 16) data-turbo-method='get' data-turbo-confirm='Are you sure?'>Delete</a></p>"
done

echo $message
