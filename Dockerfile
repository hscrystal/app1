FROM httpd:alpine

RUN apk update && apk upgrade --no-cache

COPY ./public-html/ /usr/local/apache2/htdocs/