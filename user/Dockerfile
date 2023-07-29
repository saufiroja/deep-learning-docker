FROM golang:1.20-alpine3.18

RUN mkdir /app

RUN addgroup -S pzngroup
RUN adduser -S -D -h /app pznuser pzngroup
RUN chown -R pznuser:pzngroup /app

COPY main.go /app

EXPOSE 8080

CMD go run /app/main.go