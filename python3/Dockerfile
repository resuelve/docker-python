FROM alpine:3.7
LABEL maintainer="rmontesg@resuelve.mx"

ENV PYTHONUNBUFFERED 1

RUN apk --no-cache add -U build-base python3 python3-dev

RUN apk --no-cache add -U postgresql-dev libressl-dev libffi-dev openblas-dev py-numpy
RUN apk --no-cache add ca-certificates
