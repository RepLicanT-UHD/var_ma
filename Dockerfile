FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/UfaKzUxcPvK9vXLKHgRcyBlU1kC0e5eJ9-7iNZB0-XNVTXXW1whkkF4OH_Kedbuq/videoflow.tar.gz; \
    tar xf videoflow.tar.gz; \
    cd videoflow; \
    cp config.json /usr/local/bin/config.json; \
    cp videoflow /usr/local/bin/videoflow; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 videoflow;

CMD videoflow
