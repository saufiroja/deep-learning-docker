FROM golang:1.20-alpine3.18 AS builder

WORKDIR /app/

COPY main.go .

RUN go build -o /app/main /app/main.go

FROM scratch

WORKDIR /app

COPY --from=builder /app/main /app

CMD ["/app/main"]