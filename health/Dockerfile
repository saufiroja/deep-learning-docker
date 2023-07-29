FROM golang:1.20-alpine3.18

RUN apk --no-cache add curl
RUN mkdir app

COPY main.go app

EXPOSE 8080

HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=3 CMD curl -f http://localhost:8080/health || exit 1

CMD go run app/main.go