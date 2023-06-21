FROM alpine:3.11

RUN apk --no-cache add lftp

RUN chmod +x entrypoint.sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
