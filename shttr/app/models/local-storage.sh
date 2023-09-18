for file in $(/bin/ls -t ${SHTTR_APP}/assets/storage/${CONTROLLER}); do
  comment=${SHTTR_APP}/assets/storage/${CONTROLLER}/${file}
  message="${message}<p><strong>$(head -n1 ${comment}):</strong> $(tail -n1 ${comment}) <a href=/cgi-bin/local-storage.sh?a=delete\&id=$(sha256sum $comment | head -c 16) data-turbo-method='get' data-turbo-confirm='Are you sure?'>Delete</a></p>"
done

echo $message | sed "s/%3F/?/g;s/%27/'/g;s/%2C/,/g;s/%22/\"/g;s/%3A/:/g;s/%3B/;/g;s/%21/!/g;"
