FROM node:15

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