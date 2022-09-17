FROM debian:11.5
RUN apt-get update && apt install -y wget procps
RUN wget -O - https://www.eti-lan.xyz/sync.sh | sed "s#systemctl start rc-local ;##" | sh

ADD boot.sh /.boot
ENTRYPOINT bash /.boot
