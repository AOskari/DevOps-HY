# Answers for exercises 1.1 - 1.16

## Exercise 1.1
```sh
docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED              STATUS                      PORTS     NAMES
7144ec71940f   nginx     "/docker-entrypoint.…"   About a minute ago   Exited (0) 22 seconds ago             gracious_williamson
ccfbcafd6eda   nginx     "/docker-entrypoint.…"   About a minute ago   Exited (0) 15 seconds ago             crazy_driscoll
6a3c19e5f95d   nginx     "/docker-entrypoint.…"   About a minute ago   Up About a minute           80/tcp    quizzical_germain
793c59928c8e   nginx     "/docker-entrypoint.…"   8 minutes ago        Exited (0) 6 minutes ago              elated_lederberg
```

## Exercise 1.2
```sh
docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

## Exercise 1.3

```sh
docker run -it -d --name asd devopsdockeruh/simple-web-service:ubuntu
e0e2eabe370d0e82900826562c805e1429e5cee9760a3f579543dd740ecb51bb
docker container ls
CONTAINER ID   IMAGE                                      COMMAND                  CREATED          STATUS          PORTS     NAMES
e0e2eabe370d   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"    5 seconds ago    Up 4 seconds              asd
fef04bff1cce   ubuntu                                     "sh -c 'while true;d…"   28 minutes ago   Up 28 minutes             looper-it
docker attach --no-stdin asd
Wrote text to /usr/src/app/text.log
docker exec -it asd bash
root@e0e2eabe370d:/usr/src/app# tail -f ./text.log
2023-06-18 20:11:39 +0000 UTC
2023-06-18 20:11:41 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

## Exercise 1.4

```sh
docker run -it ubuntu
apt-get update
apt-get -y install curl
sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
Input website:
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.20.1</center>
</body>
</html>
```

## Exercise 1.5
```sh
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB
docker run -d -it --name alpine devopsdockeruh/simple-web-service:alpine
docker exec -it alpine sh
```

## Exercise 1.6
```sh
docker run -it devopsdockeruh/pull_exercise
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```
