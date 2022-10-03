#!/bin/bash
echo "Kurulum Başlıyor..."
docker container stop -t 5 $(docker ps -q);
docker rm $(docker ps -aq);
echo "Tüm imajlar siliniyor."
docker rmi $(docker images * -q)
docker build -t sd/ubuntu -f ./docker.Dockerfile --build-arg USER_ID=$(id -u) .
docker images sd/*



