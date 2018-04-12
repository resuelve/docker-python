FROM alpine:3.7
LABEL maintainer="rmontesg@resuelve.mx"

ENV PYTHONUNBUFFERED 1

RUN apk --no-cache add build-base python python-dev py-pip \
	ca-certificates \
	ffmpeg \
	libffi-dev \ 
	libressl-dev \ 
	openblas-dev \
	postgresql-dev

RUN pip install --no-cache-dir pip -U \
	numpy==1.14.2 \
	pandas==0.22.0 \
	python-dateutil==2.7.2 \
	pytz==2018.3 \
	six==1.11.0 \
	scipy==1.0.0 \
	wheel==0.31.0
