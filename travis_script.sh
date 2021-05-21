#!/bin/bash
cd udagram-feed

docker build -t $1/udagram-feed:version2 .

cd ..

cd udagram-user

docker build -t $1/udagram-user:version2 .