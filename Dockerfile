FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

ADD .doc  /usr/share/nginx/html/mirror/antd-token-previewer

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
