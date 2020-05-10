FROM alpine:latest AS git

RUN apk add --no-cache git
RUN git clone --branch gh-pages --depth 1 https://github.com/keeweb/keeweb
RUN git clone --branch master --depth 1 https://github.com/keeweb/keeweb-plugins
RUN rm -r keeweb/.git
RUN mv keeweb-plugins/docs keeweb/plugins


FROM nginx:1-alpine

RUN apk add --no-cache apache2-utils

COPY entrypoint.sh /
COPY nginx.conf /etc/nginx/
COPY --from=git /keeweb /usr/share/nginx/html/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
