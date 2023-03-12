FROM nginx:1.23.3

COPY ./conf/*.conf.template /etc/nginx/templates/
COPY ./conf/nginx.conf /etc/nginx/
COPY ./certs /etc/nginx/certs
COPY ./script.sh /etc/nginx/script.sh

EXPOSE 80/tcp
EXPOSE 443

# CMD bash -c "/etc/nginx/script.sh && nginx-debug -g 'daemon off;'"
CMD "nginx-debug -g 'daemon off;'"