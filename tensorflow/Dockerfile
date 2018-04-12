FROM resuelve/python:3
LABEL maintainer="rmontesg@resuelve.mx"

ENV BAZEL_VERSION 0.4.3
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV LOCAL_RESOURCES 2048,.5,1.0
ENV TENSORFLOW_VERSION 1.4.1

RUN apk del openblas-dev

RUN apk add --no-cache freetype lapack libgfortran
RUN apk add --no-cache --virtual=.build-deps \
    bash \
    cmake \
    curl \
    freetype-dev \
    g++ \
    gfortran \
    lapack-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    linux-headers \
    make \
    musl-dev \
    openjdk8 \
    perl \
    python3-dev \
    rsync \
    sed \
    swig \
    zip py-numpy

RUN $(cd /usr/include/ && ln -s locale.h xlocale.h) \
    ln -s /usr/bin/python3 /usr/bin/python

# Instalando bazel
RUN cd /tmp \
    && curl -SLO https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-dist.zip \
    && mkdir bazel \
    && unzip bazel-${BAZEL_VERSION}-dist.zip -d bazel \
    && cd bazel \
    && sed -i -e '/"-std=c++0x"/{h;s//"-fpermissive"/;x;G}' tools/cpp/cc_configure.bzl \
    && sed -i -e '/#endif  \/\/ COMPILER_MSVC/{h;s//#else/;G;s//#include <sys\/stat.h>/;G;}' third_party/ijar/common.h \
    && bash compile.sh \
    && cp -p output/bazel /usr/bin/ 

# Instalando tensorflow

RUN cd /tmp \
    && curl -SL https://github.com/tensorflow/tensorflow/archive/v${TENSORFLOW_VERSION}.tar.gz | tar xzf - \
    && cd tensorflow-${TENSORFLOW_VERSION} \
    && sed -i -e '/JEMALLOC_HAVE_SECURE_GETENV/d' third_party/jemalloc.BUILD \
    && PYTHON_BIN_PATH=/usr/bin/python \
        PYTHON_LIB_PATH=/usr/lib/python3.6/site-packages \
        CC_OPT_FLAGS="-march=native" \
        TF_NEED_JEMALLOC=1 \
        TF_NEED_GCP=0 \
        TF_NEED_HDFS=0 \
        TF_NEED_S3=0 \
        TF_ENABLE_XLA=0 \
        TF_NEED_GDR=0 \
        TF_NEED_VERBS=0 \
        TF_NEED_OPENCL=0 \
        TF_NEED_CUDA=0 \
        TF_NEED_MPI=0 \
        bash configure \
    && bazel build -c opt --local_resources ${LOCAL_RESOURCES} //tensorflow/tools/pip_package:build_pip_package \
    && ./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg \
    && pip3 install --no-cache-dir /tmp/tensorflow_pkg/tensorflow-${TENSORFLOW_VERSION}-cp36-cp36m-linux_x86_64.whl

RUN apk del .build-deps \
    && rm -f /usr/bin/bazel \
    && rm -rf /tmp/* /root/.cache

