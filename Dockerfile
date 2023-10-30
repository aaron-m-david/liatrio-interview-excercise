# Declare image
FROM node:10-alpine
# Make dir with parent dirs and give ownership to user node as best practice
RUN mkdir -p /home/liatrio_exercise/src/node_modules && chown -R node:node /home/liatrio_exercise/src
# Set working dir for app
WORKDIR /home/liatrio_exercise/src
# Copy package.json and package-lock.json
COPY package*.json ./
# Change to user node
USER node

RUN npm install
# Copy files from host to docker giving permissions to user node
COPY --chown=node:node . .
# App will listen on port 3000
EXPOSE 3000
# Command to run app ie. node app.js
CMD [ "node", "app.js" ]
