FROM node:22

ENV NODE_ENV=production //not prefered, do it in docker-compose instead

COPY package*.json /
COPY src /src/

WORKDIR /src

RUN mkdir -p /src/logs
RUN npm install

CMD ["node", "server.js"]