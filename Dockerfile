FROM mhart/alpine-node:6.9.1
# FROM mhart/alpine-node:base-6.9.1

RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD linux_amd64/gcsfuse /usr/local/bin

