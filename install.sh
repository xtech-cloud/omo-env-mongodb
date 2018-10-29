#!/bin/bash
if [ ! `id -u` -eq 0 ]; then
    echo 'need root'
    exit
fi

apk add --no-cache mongodb

mkdir -p /omo/data/mongodb
mkdir -p /omo/log
mkdir -p /omo/log/mongodb

#cp -f ./mongo/mongo.conf /etc/mongo.conf

#mongod -f /etc/mongo.conf --fork

echo '!!! you need append follow code to /omo/.startup.sh'
echo 'mongod -f /etc/mongo.conf --fork'
