# Declare image
FROM node:alpine
# Set working dir for app
WORKDIR /home/liatrio_exercise/src
# Copy all files from current dir to working dir in docker
COPY ./ ./
#Get dependencies
RUN npm install
# App will listen on port 80
EXPOSE 80
# Command to run app ie. node app.js
CMD [ "node", "app.js" ]
