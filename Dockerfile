FROM node:17.0-alpine3.14

RUN npm i -g commitlint

WORKDIR /app

CMD ["sh", "-c", "npm i && commitlint"]
