FROM alpine:3.7

LABEL maintainer="beudbeud@beudibox.fr"

RUN apk update && apk add build-base python3 python3-dev graphicsmagick ffmpeg git

RUN git clone https://github.com/Psycojoker/prosopopee.git 

WORKDIR prosopopee

RUN pip3 install ./

RUN mkdir /site

WORKDIR /site

RUN apk del python3-dev build-base

ENTRYPOINT ["prosopopee"]

EXPOSE 9000
