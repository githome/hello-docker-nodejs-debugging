FROM node:5.11.0-slim

WORKDIR /usr/src/app

RUN npm install -g nodemon

COPY package.json /usr/src/app/package.json
RUN npm install && npm ls
# Move node_modules to the parent folder of the app folder
RUN mv /usr/src/app/node_modules /usr/src/node_modules

COPY . /usr/src/app

CMD ["npm", "start"]