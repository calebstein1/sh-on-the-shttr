if [ $signed_in ]; then
  username=$(signed_in_user username)
  export username
fi
