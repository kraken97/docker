#!/bin/bash
COMPOSER="/home/ubuntu/projects/KS/dotnet"
rm -r $COMPOSER/dotnet/core

mkdir $COMPOSER/dotnet/core_save

docker-compose --file $COMPOSER stop web

unzip   $COMPOSER/$1  -d   $COMPOSER/dotnet/core/

docker-compose --file $COMPOSER/docker-compose.yml up -d  --build web

#rm -r $COMPOSER/dotnet/core



