FROM node:8-alpine
WORKDIR /app

RUN apk --no-cache add \
  curl

COPY package.json .

RUN yarn

COPY . .

CMD [ "yarn", "start" ]
