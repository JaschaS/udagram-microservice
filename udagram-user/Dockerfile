FROM node:15

ARG port=8080
ARG username
ARG password
ARG database
ARG host
ARG aws_region
ARG aws_profile
ARG aws_media_bucket

ENV PORT ${port}
ENV POSTGRES_USERNAME ${username}
ENV POSTGRES_PASSWORD ${password}
ENV POSTGRES_DB ${database}
ENV POSTGRES_HOST ${host}
ENV S3_REGION ${aws_region}
ENV AWS_PROFILE ${aws_profile}
ENV S3_BUCKET ${aws_media_bucket}

WORKDIR /usr/app/

COPY package*.json ./
COPY tsconfig.json ./
COPY tslint.json ./

RUN mkdir src
COPY src/ ./src

RUN npm install

EXPOSE 8080

# Define Docker’s behavior when the image is run
CMD [ "npm", "run", "prod" ]