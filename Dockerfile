# Use the official Golang image as the base image
FROM golang:1.23-alpine

# Set the GOPROXY environment variable
ENV GOPROXY=https://goproxy.cn,direct

# install protoc
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update && apk add --no-cache protoc && protoc --version
