FROM alpine:edge AS resource

RUN apk --no-cache add \
  bash \
  jq \
  samba-client

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*

FROM resource
