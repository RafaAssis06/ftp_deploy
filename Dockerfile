FROM alpine:3.11

RUN apk --no-cache add lftp

COPY entrypoint.sh /entrypoint.sh

run chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
