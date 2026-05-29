FROM nginx:alpine
RUN apk add --no-cache apache2-utils \
 && htpasswd -bc /etc/nginx/.htpasswd tobis Tobis123
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/
EXPOSE 80
