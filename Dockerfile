## use node js alpine from docker hub
FROM node:15.1.0-alpine3.10
## set directory in the container to /app to store files and launch our app
WORKDIR /app
## copy the app files to /app directory
COPY package.json /app
RUN npm install
COPY . /app
## run the app
CMD node src/index.js
## expose the port where the app is running i.e. 8080
EXPOSE 8080