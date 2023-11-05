use esh, pd

v shared/app.html
v shared/nav.html

if [ $signed_in -eq 1 ]; then
  vf index.html
else
  echo '<div class="grid"><div>'
    pd signed_out.md
  echo '</div>'
fi

echo "<div>"
echo "<h6>Comments:</h6>"
for comment_id in $comments_id_list; do
  commenter=$(comments_${comment_id} name)
  comment=$(comments_${comment_id} content)
  export commenter
  export comment
  export comment_id
  vf comments.html
  if [ "${user_id}" = "$(comments_${comment_id} user_id)" ]; then
    echo "<button class=\"secondary\" style=\"padding:4px;\" form=\"${comment_id}\" data-turbo-confirm=\"Are you sure?\">Delete</button>"
  fi
done
echo "</div></div>"

v shared/btm.html
