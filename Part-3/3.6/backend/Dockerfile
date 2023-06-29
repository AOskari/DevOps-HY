FROM golang:1.16 as build-stage
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o server .

FROM scratch
WORKDIR /app
COPY --from=build-stage /app/server .
USER 1000
EXPOSE 8080
ENTRYPOINT ["./server"]