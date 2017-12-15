FROM ubuntu:artful
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
ENV MESA_VERSION=17.2.2-0ubuntu1
RUN apt-get install -y mesa-opencl-icd=${MESA_VERSION} clinfo
# not deleted to get layers
# RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
