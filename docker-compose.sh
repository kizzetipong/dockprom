DOCKER_HOST=`ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+'`
echo "DOCKER_HOST is set as ${DOCKER_HOST}"
export DOCKER_HOST=$DOCKER_HOST && docker-compose up -d