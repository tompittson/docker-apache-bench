FROM alpine:latest
MAINTAINER tpittson

RUN apk update && \
    apk upgrade && \
    apk add apache2-utils

ENTRYPOINT ["/usr/bin/ab"]
