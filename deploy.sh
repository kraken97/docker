#!/bin/bash
COMPOSER="."
rm -r $COMPOSER/dotnet/core

mkdir $COMPOSER/dotnet/core_save

docker-compose --file $COMPOSER stop

unzip   $1  -d   $COMPOSER/dotnet/core/

docker-compose --file $COMPOSER/docker-compose.yml up --build

rm -r $COMPOSER/dotnet/core



