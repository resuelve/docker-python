# Python Image

Docker Image para Python 2.

## Generar imagen de docker.

```shell
docker build --tag resuelve/python:2 .
```

## Corremos un contenedor y entrar a la shell.

```shell
docker run -t -i resuelve/python:2 sh
```

## Cargar imagen en docker hub

```shell
docker login

docker push resuelve/python:2
```
