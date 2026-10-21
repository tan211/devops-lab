FROM node:20-alpine

WORKDIR /app

COPY ./frontend/package.json ./
COPY ./frontend/yarn.lock ./

RUN yarn install

COPY ./frontend ./

CMD ["yarn", "dev"]