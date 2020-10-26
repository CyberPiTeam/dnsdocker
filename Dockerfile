FROM alpine

RUN apk update

RUN apk add dnsmasq

RUN echo 'txt-record=cyberpi.local,"flag{dns_txt_record}"' >> /etc/dnsmasq.conf

CMD dnsmasq && while true; do sleep 12 ; done
