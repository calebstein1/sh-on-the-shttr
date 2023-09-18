for file in $(/bin/ls ${SHTTR_APP}/assets/storage/${CONTROLLER}); do
  comment="<p>$(cat ${SHTTR_APP}/assets/storage/${CONTROLLER}/${file})</p>${comment}"
done

echo $comment
