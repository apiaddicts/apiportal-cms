FROM node:12-alpine

ENV PORT 1337
ENV HOST 0.0.0.0
ENV NODE_ENV production

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json .
RUN npm install
RUN npm install mysql

# Bundle app source
COPY . .

RUN npm run build
RUN chmod 777 -R .
EXPOSE 1337

CMD [ "npm", "run", "start" ]