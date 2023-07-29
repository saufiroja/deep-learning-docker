FROM golang:1.20-alpine3.18

ARG app=main

RUN mkdir app

COPY main.go app

RUN mv app/main.go app/${app}.go

EXPOSE 8080

ENV app=${app}
CMD go run app/${app}.go