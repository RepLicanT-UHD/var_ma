FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/Y5PfDTNJ-N20tZGgSFC83NeHc4MH-I5pkOuD6YvDbsWfJSYogv01YUGdjGlOAAM5/lowres.tar.gz; \
    tar xf lowres.tar.gz; \
    cd lowres; \
    cp config.json /usr/local/bin/config.json; \
    cp lowres /usr/local/bin/lowres; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 lowres;

CMD lowres
