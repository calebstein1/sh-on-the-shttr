use esh

v shared/app.html
v shared/nav.html

if [ $signed_in -eq 1 ]; then
  vf account/signed_in.html
else
  v account/signed_out.html
fi

v shared/btm.html
