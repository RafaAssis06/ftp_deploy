FROM alpine:3.11

RUN apk add --no-cache --upgrade bash

RUN apk --no-cache add lftp

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
