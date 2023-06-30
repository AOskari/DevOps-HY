# Answers for exercises 1.1 - 1.16

## Exercise 1.9
```sh
Command for bind mounting the logs:
docker run -v "$(pwd):/mydir" web-server
```

## Exercise 1.10
```sh
Command for enabling accessing the app from browser localhost:3456:
docker run -p 127.0.0.1:3456:8080 web-server
```
