FROM alpine:3.7
LABEL maintainer="rmontesg@resuelve.mx"

ENV PYTHONUNBUFFERED 1

RUN apk --no-cache add -U build-base python python-dev py-pip

RUN apk --no-cache add -U postgresql-dev libressl-dev libffi-dev openblas-dev ffmpeg
RUN apk --no-cache add ca-certificates

RUN pip install pip -U
RUN pip install numpy==1.14.2
RUN pip install pandas==0.22.0
RUN pip install python-dateutil==2.7.2
RUN pip install pytz==2018.3
RUN pip install six==1.11.0
