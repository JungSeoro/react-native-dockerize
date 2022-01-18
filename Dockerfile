FROM node:12 

RUN npm install -g expo-cli
RUN apt-get update

WORKDIR /
