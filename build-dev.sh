#!/bin/zsh

set -e 
echo 'Build script for dev env'
echo 'Do you wanna build the image (y/n)? '
read data
if [ $data = "y" ];then
    docker-compose -f ./docker-compose.dev.yml build
fi

echo 'Do you want to run the image (y/n)?'
read data
if [ $data = "y" ];then
    docker-compose -f ./docker-compose.dev.yml up
fi