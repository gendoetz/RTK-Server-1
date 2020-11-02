FROM i386/ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
    echo tzdata tzdata/Zones/Europe select London | debconf-set-selections && \
    echo tzdata tzdata/Zones/Etc select UTC | debconf-set-selections && \
    apt-get update && apt-get install -y \
    build-essential \
    make \
    libmysqlclient20 \
    libmysqlclient-dev \
    lua5.1 \
    liblua5.1 \
    mysql-client-5.7

COPY ./rtk /root/rtk
COPY ./rtklua /root/rtklua
COPY ./rtkmaps /root/rtkmaps

# TODO: Implement cron job for automated database backups
