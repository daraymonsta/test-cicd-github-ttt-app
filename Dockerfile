FROM node:20-alpine

WORKDIR /usr/src/app

LABEL MAINTAINER=ramon_rossi@hotmail.com

COPY app/ ./

RUN npm ci --omit=dev

EXPOSE 3000

CMD ["npm", "start"]