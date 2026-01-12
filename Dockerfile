FROM node:20.19.0-alpine

ENV PORT 1337
ENV HOST 0.0.0.0

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

RUN npm run build

EXPOSE 1337

CMD [ "npm", "run", "start" ]
