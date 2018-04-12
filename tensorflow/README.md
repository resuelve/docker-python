# Python Image

Docker Image para Tensorflow.

## Generar imagen de docker.

```shell
docker build --tag resuelve/python:tensorflow .
```

## Corremos un contenedor y entramos al shell.

```shell
docker run --rm -ti resuelve/python:tensorflow sh
```

## Cargar imagen en docker hub

```shell
docker login

docker push resuelve/python:tensorflow
```
