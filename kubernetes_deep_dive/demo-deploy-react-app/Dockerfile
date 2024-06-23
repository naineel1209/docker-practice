FROM node:20.13.1-alpine

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]