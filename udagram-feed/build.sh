#!/bin/bash
docker build -t pdfwe3/udagram:feed \
--build-arg username=$POSTGRES_USERNAME \
--build-arg password=$POSTGRES_PASSWORD \
--build-arg database=$POSTGRES_DB \
--build-arg host=$POSTGRES_HOST \
--build-arg aws_region=$S3_REGION \
--build-arg aws_profile=$AWS_PROFILE \
--build-arg aws_media_bucket=$S3_BUCKET \
.
