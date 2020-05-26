# Python Image

Docker Image para Python 3 with matplotlib and seaborn.

## Generar imagen de docker.

```shell
docker build --tag resuelve/python:seaborn .
```

## Corremos un contenedor y entramos al shell.

```shell
docker run --rm -ti resuelve/python:seaborn sh
```

## Cargar imagen en docker hub

```shell
docker login

docker push resuelve/python:seaborn
```
