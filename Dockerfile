FROM mhart/alpine-node:7.2
# FROM mhart/alpine-node:base-7.2

RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD linux_amd64/gcsfuse /usr/local/bin

