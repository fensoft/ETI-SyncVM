FROM jrei/systemd-debian:10
RUN apt-get update && apt-get install -y wget systemd procps && apt clean
RUN touch /etc/rc.local
RUN wget -O - https://www.eti-lan.xyz/sync.sh | sed "s#systemctl start rc-local#true#" | bash -x -e
