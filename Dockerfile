FROM ubuntu:14.04

MAINTAINER nwinc zhgrun.d@gmail.com

RUN apt-get update
RUN apt-get install -y tftpd-hpa
RUN mkdir -p /tftpboot

ADD tftpd-hpa /etc/default/tftpd-hpa
VOLUME /tftpboot
RUN chmod -R 777 /tftpboot
#RUN chown -R nobody /tftpboot

EXPOSE 69/udp
ENTRYPOINT /etc/init.d/tftpd-hpa start && /bin/bash
