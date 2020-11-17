FROM ubuntu:14.04

RUN mkdir -p /app
WORKDIR /app
ADD     . /app
RUN apt-get update
