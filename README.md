# Python Image

Docker Images para python construidas con Alpine Linux.

## Generar imagen de docker.

```shell
docker build --tag resuelve/python:latest .
```

## Corremos un contenedor y entramos al shell.

```shell
docker run --rm -ti resuelve/python:latest sh
```
