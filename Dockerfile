FROM ubuntu:latest

USER root

RUN apt-get update ;\
    apt-get upgrade -y ;\
    apt-get install -y dnsmasq

VOLUME [ "/etc/dnsmasq.conf" ]

EXPOSE 53 53/udp

ENTRYPOINT [ "dnsmasq", "-k" ]