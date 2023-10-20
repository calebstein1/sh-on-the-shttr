. ${SHTTR_LIB}/esh

v shared/app.html
v shared/nav.html

if [ ${signed_in} ]; then
  v account/signed_in.html
else
  v account/signed_out.html
fi

v shared/btm.html
