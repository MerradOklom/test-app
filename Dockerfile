FROM openresty/openresty:alpine

# Install dependencies
RUN apk add --no-cache \
    bash \
    curl \
    jq

# Copy config + scripts
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY get_jwt.sh /opt/get_jwt.sh

RUN chmod +x /opt/get_jwt.sh

# Render uses PORT env var
EXPOSE 8080

CMD ["openresty", "-g", "daemon off;"]
