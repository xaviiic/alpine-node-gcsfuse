FROM mhart/alpine-node:7.1
# FROM mhart/alpine-node:base-7.1

RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD gcsfuse /usr/local/bin

