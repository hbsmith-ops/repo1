FROM ubuntu:14.04

RUN mkdir -p /app
WORKDIR /app
ADD     . /app
RUN apt-get update
RUN apt-get install apache2
RUN service apache2 start
VOLUME ["/data", "/var/log/httpd"]
EXPOSE 80

CMD ["/app/log.backup.sh"]
