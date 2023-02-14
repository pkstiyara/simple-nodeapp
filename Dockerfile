FROM node:13-alpine

RUN mkdir -p /home/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "node", "index.js" ]