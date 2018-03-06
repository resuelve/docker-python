# Python Image

Docker Image para Python 3.

## Generar imagen de docker.

```shell
docker build --tag resuelve/python:3 .
```

## Corremos un contenedor y entrar a la shell.

```shell
docker run -t -i resuelve/python:3 sh
```

## Cargar imagen en docker hub

```shell
docker login

docker push resuelve/python:3
```
