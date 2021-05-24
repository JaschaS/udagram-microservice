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

EXPOSE 4200

CMD [ "npm", "run", "start" ]