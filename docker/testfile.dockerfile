FROM nginx:1.15.8

ADD static/fruit.json /usr/share/nginx/html/

ADD nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

