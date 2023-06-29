# From node:latest
FROM node:20-alpine

COPY package.json /app/harshitha/ 
COPY src /app/harshitha/ 

WORKDIR /app/harshitha/ 

# RUN apt-get update && apt-get install -y npm
RUN npm install
ENTRYPOINT ["node", "chetana.js"]
