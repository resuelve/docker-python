FROM alpine:edge
LABEL maintainer="raulumb@gmail.com"

ENV PYTHONUNBUFFERED 1

RUN apk --no-cache add -U build-base

# Install python 2
RUN apk --no-cache add -U python python-dev py-pip

# Install python 3
RUN apk --no-cache add -U python3 python3-dev

RUN apk --no-cache add -U postgresql-dev libressl-dev libffi-dev
RUN apk --no-cache add ca-certificates
