#!/bin/bash
COMPOSER="/home/ubuntu/docker"
rm -r $COMPOSER/dotnet-staging/core

mkdir $COMPOSER/dotnet-staging/core_save

docker-compose --file $COMPOSER stop web-staging

unzip   $COMPOSER/$1  -d   $COMPOSER/dotnet-staging/core/

docker-compose --file $COMPOSER/docker-compose.yml up -d  --build web-staging

rm -r $COMPOSER/dotnet-staging/core
rm $COMPOSER/*.zip

Build Success 'KS:Deploy latest GIT staging build to server http://52.57.98.196/ ' started by On Repository Change | ./notify.sh
