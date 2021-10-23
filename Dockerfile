FROM node:17.0-alpine3.14

RUN npm i -g commitlint

WORKDIR /app

COPY start /

ENTRYPOINT ["./start"]
