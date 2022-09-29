FROM node:dubnium-alpine3.11
WORKDIR /usr/apps
COPY . .
ENV DATABASE URL POSTGRES://akmal:akmal@103.174.114.24/literature
ENV NODE_ENV production 
RUN npm install
RUN npm build
RUN npm install sequelize-cli -g
RUN npx sequelize db:migrate
EXPOSE 5000
CMD [ "node", "server.js" ]
