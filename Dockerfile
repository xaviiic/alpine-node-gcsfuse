FROM mhart/alpine-node:7.0
# FROM mhart/alpine-node:base-7.0

RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD gcsfuse /usr/local/bin

