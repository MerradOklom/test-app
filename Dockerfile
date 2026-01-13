FROM openresty/openresty:alpine-fat

RUN apk add --no-cache ca-certificates \
 && luarocks install lua-resty-http

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

EXPOSE 8080
CMD ["openresty", "-g", "daemon off;"]
