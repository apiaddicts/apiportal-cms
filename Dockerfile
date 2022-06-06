FROM node:12-alpine

ENV PORT 1337
ENV HOST 0.0.0.0
ENV NODE_ENV production

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json /usr/src/app/
RUN npm install
RUN npm install mysql

# Bundle app source
COPY . /usr/src/app

RUN npm run build
RUN chmod 777 -R .
EXPOSE 1337

CMD [ "npm", "run", "start" ]