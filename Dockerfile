# mockin Dockerfile
FROM node:20-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --only=production
COPY ./src ./src
# default mockin port
EXPOSE 3333
ENV IP=0.0.0.0
CMD ["npm", "start"]
