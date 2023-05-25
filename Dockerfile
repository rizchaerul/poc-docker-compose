# syntax=docker/dockerfile:1
FROM node:16-alpine
WORKDIR /app
EXPOSE 3000
COPY . .
RUN npm ci
ENTRYPOINT [ "npm", "start" ]
