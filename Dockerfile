FROM node:dubnium-alpine3.11
WORKDIR /usr/apps
COPY . .
ENV DATABASE_URL POSTGRES://akmal:Future1@103.174.114.24/literature
ENV NODE_ENV production 
RUN npm install
RUN npm install -g sequelize-cli
RUN npx sequelize db:migrate --env production
EXPOSE 5000
CMD [ "node", "server.js" ]
