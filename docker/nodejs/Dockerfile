FROM node:lts-bullseye-slim as build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "node", "app.js" ]

FROM node:alpine as runtime
COPY --from=build /usr/src/app /usr/src/app
CMD [ "node", "/usr/src/app/dist/final.js" ]