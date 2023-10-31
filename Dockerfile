# Declare image
FROM node:14-alpine
# Set working dir for app
WORKDIR /home/liatrio_exercise/src
# Copy all files from current dir to working dir in docker
COPY ./ ./
#Get dependencies
RUN npm install
# App will listen on port 3000
EXPOSE 3000
# Command to run app ie. node app.js
CMD [ "node", "app.js" ]
