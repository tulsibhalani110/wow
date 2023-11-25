

# syntax=docker/dockerfile:1
FROM node:14

WORKDIR /app
USER root 

COPY package*.json ./
RUN mkdir -p /var/docker
RUN npm install
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
