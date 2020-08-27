HOST_IP=`ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+'`
echo "HOST_IP is set as ${HOST_IP}"
export HOST_IP=$HOST_IP && docker-compose up -d