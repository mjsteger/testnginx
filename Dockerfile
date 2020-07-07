FROM nginx
COPY default.conf.template /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
CMD ["/bin/bash", "-c", "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
