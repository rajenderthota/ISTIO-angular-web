FROM nginx:1.14.0-alpine

MAINTAINER Rajender Thota "java.rajender@gmail.com"

RUN rm -rf /usr/share/nginx/html/*

COPY /dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
