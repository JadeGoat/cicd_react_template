FROM node:14
WORKDIR /usr/src/app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY ./src ./src
COPY ./index.html ./index.html
COPY ./vite.config.js ./vite.config.js
EXPOSE 3000
CMD ["npm", "start"]