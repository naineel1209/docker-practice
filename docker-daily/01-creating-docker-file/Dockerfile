FROM node:alpine

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install

#Copy all the files from the current directory to the container
COPY . .

#Expose the port
EXPOSE 3000

CMD ["npm", "start"]
