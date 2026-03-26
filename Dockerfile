FROM node:22

COPY package*.json /
COPY src /src/

WORKDIR /src

RUN npm install

CMD ["node", "server.js"]