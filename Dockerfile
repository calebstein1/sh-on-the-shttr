FROM httpd:latest

RUN apt-get update && \
    apt-get install -y gettext pandoc
RUN sed -i '/^ServerRoot/ a DirectoryIndex "/cgi-bin/index.sh"' /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /var/shttrdb && \
    chown -R www-data:www-data /var/shttrdb
VOLUME shttrdb

COPY shttr/ /usr/local/apache2/htdocs/
COPY cgi-bin/ /usr/local/apache2/cgi-bin/

EXPOSE 80

CMD httpd-foreground -c "LoadModule cgid_module modules/mod_cgid.so"
