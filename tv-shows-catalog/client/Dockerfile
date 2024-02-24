FROM node:alpine

WORKDIR /app/client

COPY . .

COPY .env.example .env

RUN npm install

RUN npm run build

CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]
