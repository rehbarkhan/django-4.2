#!/bin/sh
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT;do
    echo 'waiting for database ...'
    sleep 1
done
