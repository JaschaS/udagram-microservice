#!/bin/bash
cd udagram-feed

docker build -t $1/udagram:feed \
--build-arg username=$2 \
--build-arg password=$3 \
--build-arg database=$4 \
--build-arg host=$5 \
--build-arg aws_region=$6 \
--build-arg aws_profile=$7 \
--build-arg aws_media_bucket=$8 \
.

cd ..

cd udagram-user

docker build -t $1/udagram:user \
--build-arg username=$2 \
--build-arg password=$3 \
--build-arg database=$4 \
--build-arg host=$5 \
--build-arg aws_region=$6 \
--build-arg aws_profile=$7 \
--build-arg aws_media_bucket=$8 \
.