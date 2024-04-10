FROM node:18-alpine

WORKDIR /usr/frontend/src

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 4200

CMD [ "npm", "start" ]