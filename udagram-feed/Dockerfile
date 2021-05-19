FROM node:15

WORKDIR /usr/app/

COPY package*.json ./
COPY tsconfig.json ./
COPY tslint.json ./

RUN mkdir src
COPY src/ ./src

RUN npm install
RUN npm run tsc

EXPOSE 8080

CMD [ "npm", "start" ]