#!/bin/bash
cd udagram-feed

docker build -t $1/udagram-feed:version4 .

cd ..

cd udagram-user

docker build -t $1/udagram-user:version3 .

cd ..

cd udagram-frontend

docker build -t $1/udagram-frontend:version6 .

cd ..

cd reverse-proxy

docker build -t $1/udagram-proxy:version2 .