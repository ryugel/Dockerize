FROM node:lts

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

CMD node /app/dist/main.js
