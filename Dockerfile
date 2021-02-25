FROM alpine:3.12.2

RUN apk update

RUN apk add dnsmasq

RUN echo 'txt-record=cyberpi.local,"flag{dns_txt_record}"' >> /etc/dnsmasq.conf

EXPOSE 53/udp

CMD dnsmasq && while true; do sleep 12 ; done
