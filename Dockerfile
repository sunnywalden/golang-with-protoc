# Use the official Golang image as the base image
FROM golang:1.22-alpine

# Set the working directory inside the container
WORKDIR /app

# Set the GOPROXY environment variable
ENV GOPROXY=https://goproxy.cn,direct

# install protoc
RUN apk update && apk add --no-cache protoc && protoc --version