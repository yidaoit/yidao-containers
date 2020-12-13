FROM phpswoole/swoole:4.5.9-php8.0-dev

RUN apt-get update && apt-get install -y openssh-server

COPY sshd_config /etc/ssh/sshd_config

RUN useradd -rm -d /opt/app-root -s /bin/bash -g root -u 1000 dev

RUN echo "root:root" | chpasswd

RUN ssh-keygen -A
RUN mkdir /run/sshd

COPY ./rootfilesystem/ /

RUN chmod +x /customized-entrypoint.sh

ENTRYPOINT ["/customized-entrypoint.sh"]
