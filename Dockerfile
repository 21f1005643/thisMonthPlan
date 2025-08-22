FROM node:24-slim

WORKDIR /app

RUN  apt-get update && apt-get install -y git

COPY package*.json ./

RUN npm install 

EXPOSE 5173

CMD ["npm","run","dev"]