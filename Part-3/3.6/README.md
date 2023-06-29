# Exercise 3.6 - 3.9    
| Dockerfiles        |
| ------------- |
[Frontend Dockerfile](https://github.com/AOskari/DevOps-HY/blob/master/Part-3/3.6/frontend/Dockerfile)
[Backend Dockerfile](https://github.com/AOskari/DevOps-HY/blob/master/Part-3/3.6/backend/Dockerfile)

## Exercise 3.6
```sh
Size before changes: 
REPOSITORY                                   SIZE
35-frontend                                  1.14GB
35-backend                                   1.26GB

Size after changes:
REPOSITORY                                   SIZE
36-frontend                                  1.14GB
36-backend                                   1.26GB

```

## Exercise 3.7
```sh
Size before changes:
REPOSITORY                                   SIZE
36-frontend                                  1.14GB
36-backend                                   1.26GB

Size after changes:
REPOSITORY                                   SIZE 
36-frontend                                  766MB
36-backend                                   840MB

```

## Exercise 3.8
```sh
Size before builder pattern:
REPOSITORY                                   SIZE 
36-frontend                                  766MB

Size after builder pattern:
REPOSITORY                                   SIZE 
36-frontend                                  490MB

```

## Exercise 3.9
```sh
Size before builder pattern & scratch:
REPOSITORY                                   SIZE 
36-backend                                   840MB

Size after builder pattern & scratch:
REPOSITORY                                   SIZE 
36-backend                                   18MB
```
