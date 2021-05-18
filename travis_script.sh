#!/bin/bash
cd udagram-feed

docker build \
--build-arg username=$1 \
--build-arg password=$2 \
--build-arg database=$3 \
--build-arg host=$4 \
--build-arg aws_region=$5 \
--build-arg aws_profile=$6 \
--build-arg aws_media_bucket=$7 \
.
