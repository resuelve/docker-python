FROM python:3.6.10-alpine3.11

LABEL maintainer="rmontesg@resuelve.mx"

RUN apk --no-cache add build-base openblas-dev musl-dev lapack \
    libstdc++ freetype-dev lapack-dev postgresql-dev

RUN pip install numpy==1.13.3 \
    && pip install scipy==1.0.1 \
    && pip install pandas==1.0.3 \
    && pip install seaborn==0.10.1 \
    && rm -rf /root/.cache
