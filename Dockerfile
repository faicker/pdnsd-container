#
# Dockerfile for pdnsd
#

FROM alpine
MAINTAINER Faicker Mo <faicker.mo@gmail.com>

RUN apk add -U pdnsd \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
