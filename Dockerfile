FROM node:14.15.5-alpine3.13

WORKDIR /app

COPY ./src/package.json ./
RUN npm install
COPY ./src .
EXPOSE 8080

CMD ["npm", "start"]