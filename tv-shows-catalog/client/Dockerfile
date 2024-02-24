FROM node:alpine

WORKDIR /app/client

COPY . .

COPY .env.client .

RUN npm install && npm run build

CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]
