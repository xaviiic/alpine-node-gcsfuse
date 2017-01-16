FROM mhart/alpine-node:7.3
# FROM mhart/alpine-node:base-7.3

RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD linux_amd64/gcsfuse /usr/local/bin

