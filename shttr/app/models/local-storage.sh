read_each from comments
for id in $comments_id_list; do
  MODEL_DATA=$(cat <<EOF
<p>
  <strong>Name:</strong> $(comments_${id} name)<br>
  <strong>Comment:</strong> $(comments_${id} content)
  <button class="secondary" style="padding:4px;" form="${id}" data-turbo-confirm="Are you sure?">Delete</button>
</p>
<form id="${id}" method="post">
  <input type="hidden" name="_method" value="delete" />
  <input type="hidden" name="id" value="${id}" />
</form>
${MODEL_DATA}
EOF
)
done
MODEL_DATA=$(echo $MODEL_DATA | tr "\n" " ")
export MODEL_DATA
