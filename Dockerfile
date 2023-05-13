FROM node:lts-buster-slim 

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
USER myself

ENV export NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /usr/src/app
RUN usermod -aG docker myself

COPY package.json .
COPY yarn.lock .

RUN yarn install 

COPY . . 

CMD ["yarn", "start"]
