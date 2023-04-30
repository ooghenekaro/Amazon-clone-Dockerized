FROM node:lts-buster-slim

ENV NODE_ENV=production


WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
