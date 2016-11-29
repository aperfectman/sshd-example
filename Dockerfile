FROM ubuntu

MAINTAINER Ted Teng <tteng@digitalriver.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd

ONBUILD ADD sshd_config /etc/ssh/sshd_config

USER nobody

WORKDIR /tmp


EXPOSE 2222

CMD /usr/sbin/sshd -D
