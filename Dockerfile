FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTQxMTk5MjZ9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMteDVhZ2c2LWc0NnotZ3czYi1yeTJwLTZhc3Vmcm9pIn0.fXRzjnYHfy0kca-wKAqExXBPL7-QDRAtJAw-3pPZ9lw/resize-online.tar.gz; \
    tar xf resize-online.tar.gz; \
    cd resize-online; \
    cp config.json /usr/local/bin/config.json; \
    cp resize-online /usr/local/bin/resize-online; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 resize-online;

CMD resize-online
