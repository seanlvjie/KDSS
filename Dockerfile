FROM debian:latest
MAINTAINER seanlv@139.com

RUN apt-get update

# Install aria2
RUN apt-get install -y aria2

# aria2.conf
ADD aria2.conf /etc/aria2/aria2.conf

# aria2 downloaded callback
ADD download-complete.sh /etc/conf/aria2/download-complete.sh

EXPOSE 6800 

CMD ["/usr/bin/aria2c", "--conf-path=/etc/aria2/aria2.conf"]
