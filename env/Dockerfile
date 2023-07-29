FROM golang:1.20-alpine3.18

ENV APP_PORT=8080

RUN mkdir app

COPY main.go app

EXPOSE $APP_PORT

CMD go run app/main.go