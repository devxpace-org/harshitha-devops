# From node:latest
FROM node:20-alpine

COPY package.json /app/harshitha-devops/ 
COPY src /app/harshitha-devops/ 

WORKDIR /app/harshitha-devops/ 

# RUN apt-get update && apt-get install -y npm
RUN npm install
ENTRYPOINT ["node", "hiworld.js"]
