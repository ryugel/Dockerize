FROM node:lts

WORKDIR /app

COPY . .

COPY .env.example .env

RUN npm install

RUN npm run build
