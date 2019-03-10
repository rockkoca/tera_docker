FROM node:8

RUN apt-get update &&  apt-get install -y git build-essential && npm install pm2 -g \
    && git clone https://gitlab.com/terafoundation/tera.git wallet \
    && cd wallet/Source && npm install && node set httpport:8080 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR wallet/Source

RUN ls -al -R

EXPOSE 8080 30000

ENV password=tare

COPY ./run.sh ./run.sh

CMD sh run.sh