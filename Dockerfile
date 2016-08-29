FROM debian:latest

MAINTAINER Zeynep Kurkcuoglu "zeynepkurkcuoglu@gmail.com"

#Install software
RUN export DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && \
    apt-get -qq install -y --no-install-recommends --fix-missing \
                        build-essential \
			libxml2-dev \
			libxslt1-dev \
			gcc \
			autoconf \
			automake \
			cmake \
			autotools-dev \
			libfftw3-3 \
			libfftw3-dev \
			git \
			wget \
			#needed for scipy
			libatlas-base-dev \
			gfortran \
			#Python modules
			python-dev \
			python-numpy \
			python-matplotlib \
			python-scipy \
                        #editor
			vim > /dev/null

ADD tutorials.tar.gz /
ADD gmx-waxs-cloud.tar.gz /
WORKDIR /build
RUN chmod +x /build/compile-single-gcc.sh
RUN /bin/bash /build/compile-single-gcc.sh
ENV PATH=/executable/bin:$PATH
WORKDIR /

