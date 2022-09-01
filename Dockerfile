FROM node:8
WORKDIR /app/node
COPY package*.json ./

RUN npm install
COPY . .
COPY ./src/ /app/node
EXPOSE 80

CMD ["node", "server.js"]