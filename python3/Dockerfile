FROM alpine:edge
LABEL maintainer="raulumb@gmail.com"

ENV PYTHONUNBUFFERED 1

RUN apk --no-cache add -U build-base python3 python3-dev

RUN apk --no-cache add -U postgresql-dev libressl-dev libffi-dev
RUN apk --no-cache add ca-certificates
