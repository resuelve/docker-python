# Python Image

Docker Image para Python 3.

## Generar imagen de docker.

```shell
docker build --tag resuelve/python:3 .
```

## Corremos un contenedor y entramos al shell.

```shell
docker run --rm -ti resuelve/python:3 sh
```

## Cargar imagen en docker hub

```shell
docker login

docker push resuelve/python:3
```
