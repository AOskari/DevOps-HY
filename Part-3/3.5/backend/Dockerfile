FROM golang:1.16

ENV PORT=8080

EXPOSE $PORT
WORKDIR /app
COPY . .


RUN go mod download
RUN go build
RUN go test ./...

RUN useradd -m appuser
RUN chown appuser .
USER appuser

ENTRYPOINT ["./server"]