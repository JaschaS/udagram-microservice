#!/bin/bash
cd udagram-feed

docker build -t $1/udagram-feed:version2 .

cd ..

cd udagram-user

docker build -t $1/udagram-user:version2 .

cd ..

cd udagram-frontend

docker build -t $1/udagram-frontend:version2 .

cd ..

cd udagram-proxy

docker build -t $1/udagram-proxy:version2 .