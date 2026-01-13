FROM openresty/openresty:alpine

RUN opm get openresty/lua-resty-http

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

EXPOSE 8080

CMD ["openresty", "-g", "daemon off;"]
