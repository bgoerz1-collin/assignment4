FROM fedora
RUN dnf -yqq upgrade
RUN dnf -yqq install tuxpaint vim httpd
COPY myinfo.html /var/www/html/
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
