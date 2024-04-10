FROM scratch AS base

ADD alpine-minirootfs-3.19.1-x86_64.tar /

ARG VERSION=1.0.0

ENV APP_VERSION=$VERSION

WORKDIR /usr/app

RUN apk update && \
    apk add --no-cache nodejs
    
COPY ./index.js ./

EXPOSE 3000
CMD ["node", "index.js"]

