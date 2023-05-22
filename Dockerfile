FROM nginx:alpine

MAINTAINER Anuj

COPY build /usr/share/nginx/html

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

