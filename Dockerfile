FROM node:22.10-alpine

WORKDIR /app


COPY index.js /app/index.js
COPY package.json /app/package.json

RUN ["npm", "install"]

ENTRYPOINT [ "node", "index.js" ]

EXPOSE 3000