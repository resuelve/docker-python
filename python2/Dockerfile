FROM alpine:edge
LABEL maintainer="raulumb@gmail.com"

ENV PYTHONUNBUFFERED 1

RUN apk --no-cache add -U build-base python python-dev py-pip

RUN apk --no-cache add -U postgresql-dev libressl-dev libffi-dev openblas-dev
RUN apk --no-cache add ca-certificates
