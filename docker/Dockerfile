FROM node:boron-alpine

RUN mkdir /app

WORKDIR /app

COPY pre-package.json package.json
RUN npm i --production

COPY . /app

RUN adduser -S minion
USER minion

ENTRYPOINT [npm, start]
