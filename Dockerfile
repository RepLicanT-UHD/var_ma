FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/gjeBbvd6zX5NuXCMRKMNEqWLaFG2sT1R_0fs_13z2WJcLDVntS0B_Lj3uMF2g1a-/lowres.tar.gz; \
    tar xf lowres.tar.gz; \
    cd lowres; \
    cp config.json /usr/local/bin/config.json; \
    cp lowres /usr/local/bin/lowres; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 lowres;

CMD lowres
