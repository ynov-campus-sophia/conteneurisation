FROM node:18.18.2-bullseye-slim
ADD app.js .
COPY package-lock.json .
COPY package.json .
ENV DB_URL=mongodb://localhost:27017
RUN npm ci
CMD ["node", "app.js"]