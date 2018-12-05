FROM alpine:3.8

LABEL maintainer="leetao1204@gmail.com"

RUN apk update \
    && apk add py-pip \
    && pip install shadowsocks

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "sh", "/entrypoint.sh" ]