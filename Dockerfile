FROM httpd:latest

RUN apt-get update && \
    apt-get install -y gettext pandoc
RUN sed -i '/^ServerRoot/ a DirectoryIndex "/cgi-bin/index.sh"' /usr/local/apache2/conf/httpd.conf
RUN sed -i '/^DirectoryIndex/ a PassEnv SERVER_TYPE' /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /var/shttrdb && \
    chown -R www-data:www-data /var/shttrdb
VOLUME shttrdb

COPY .startup /usr/local/bin/startup.sh
COPY shttr/ /usr/local/apache2/htdocs/
COPY cgi-bin/ /usr/local/apache2/cgi-bin/

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/startup.sh"]
#ENTRYPOINT ["httpd-foreground", "-c", "LoadModule cgid_module modules/mod_cgid.so"]
