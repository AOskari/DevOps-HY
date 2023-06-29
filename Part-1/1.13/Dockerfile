FROM golang:1.16

ENV PORT=8080

# This was added for exercise 1.14
ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE $PORT
WORKDIR /app
COPY . .


RUN go mod download
RUN go build
RUN go test ./...
ENTRYPOINT ["./server"]