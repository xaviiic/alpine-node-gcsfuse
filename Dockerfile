FROM mhart/alpine-node:6.9
# FROM mhart/alpine-node:base-6.9

RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD gcsfuse /usr/local/bin

