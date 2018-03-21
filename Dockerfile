FROM alpine:3.7
LABEL maintainer="rmontesg@resuelve.mx"

ENV PYTHONUNBUFFERED 1

RUN apk --no-cache add -U build-base
RUN apk --no-cache add -U python python-dev py-pip py-numpy
RUN apk --no-cache add -U python3 python3-dev py-numpy

RUN apk --no-cache add -U postgresql-dev libressl-dev libffi-dev openblas-dev
RUN apk --no-cache add ca-certificates
