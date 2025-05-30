
FROM node:16-alpine

WORKDIR /app


COPY package.json /app
COPY package-lock.json /app

RUN npm install

COPY . /app

RUN npm run build

RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "build", "-l", "3000"]
