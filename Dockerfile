# set the base image to node:18-alpine
FROM node:18-alpine

# copy the packege.json and src files to the app directory
COPY package.json /app/
COPY src /app/

# set the working directory to /app
WORKDIR /app

# install the dependencies
RUN npm install

# expose the port 3000
CMD [ "node" , "server.js" ]