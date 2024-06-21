FROM node:20.13.1-alpine

WORKDIR /app

COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]
