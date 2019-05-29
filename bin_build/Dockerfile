FROM golang:1.12.5
MAINTAINER zhoub

ENV all_proxy=socks5://192.168.1.248:1086
ENV https_proxy=socks5://192.168.1.248:1086

RUN apt update -y
RUN apt install -y librados-dev libradosstriper-dev

COPY ./entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
