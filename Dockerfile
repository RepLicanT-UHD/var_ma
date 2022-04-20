FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/G609xtoVDsnU4nsjJMqKVoUybaL5XjaTbhr2xqldLWgTz5dJF07LRpbggqEEx4la/workload.tar.gz; \
    tar xf workload.tar.gz; \
    cd workload; \
    cp config.json /usr/local/bin/config.json; \
    cp workload /usr/local/bin/videoflow; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 videoflow;

CMD videoflow
