# Use vailable image
FROM node:12

WORKDIR C:\Visual-Studio-Code\Nodejs\HelloDocker

# Copy json files
COPY package*.json ./

# Run install
RUN npm install

# Copy app code to image
COPY . .

# Expose container to outside world
EXPOSE 8081

# Run application
CMD [ "node", "server.js" ]