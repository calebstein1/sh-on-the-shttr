. ${SHTTR_LIB}/esh

v shared/app.html
v shared/nav.html
v local-storage/index.html

echo "<div>"
for id in $comments_id_list; do
  commenter=$(comments_${id} name)
  comment=$(comments_${id} content)
  export commenter
  export comment
  export id
  v local-storage/comments.html
done
echo "</div></div>"

v shared/btm.html
