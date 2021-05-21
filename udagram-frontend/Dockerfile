FROM node:15

WORKDIR /usr/app/

COPY package*.json ./
COPY tsconfig.json ./
COPY tslint.json ./
COPY ionic.config.json ./
COPY tsconfig.json ./
COPY angular.json ./

RUN mkdir src
COPY src/ ./src

RUN npm install
run npm run build

EXPOSE 8080

CMD [ "npm", "run", "start" ]