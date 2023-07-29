FROM golang:1.20-alpine3.18

ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir -p ${APP_DATA}
RUN mkdir -p app

COPY main.go app

EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}

CMD go run app/main.go