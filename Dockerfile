FROM node:8.9.3-wheezy

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm i

COPY . /usr/src/app/

ENV PORT=3210
ENV DB_URL="mongodb://mongodb/alc-challenge"

CMD ["npm", "start"]
