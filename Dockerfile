FROM node:10.14.0-alpine

RUN mkdir /app
WORKDIR /app

COPY . .
