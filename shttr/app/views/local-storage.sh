. ${SHTTR_LIB}/esh

v shared/app.html
v shared/nav.html
v local-storage/index.html

echo "<div>"
for id in $comments_id_list; do
  cat <<EOF
<p>
  <strong>Name:</strong> $(comments_${id} name)<br>
  <strong>Comment:</strong> $(comments_${id} content)
  <button class="secondary" style="padding:4px;" form="${id}" data-turbo-confirm="Are you sure?">Delete</button>
</p>
<form id="${id}" method="post">
  <input type="hidden" name="_method" value="delete" />
  <input type="hidden" name="id" value="${id}" />
</form>
EOF
done
echo "</div></div>"

v shared/btm.html
