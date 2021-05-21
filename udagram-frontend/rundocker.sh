#!/bin/bash

source ~/.profile

echo $1

docker run \
-p 49160:4200 \
fr
