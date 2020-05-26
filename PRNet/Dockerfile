
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
#FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04


LABEL maintainer "kyoungchin seo <kcseo@airi.kr>"

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    ca-certificates curl git vim less \
    build-essential cmake pkg-config wget \
    apt-utils unzip software-properties-common

RUN apt-get update 
RUN apt-get install -y --no-install-recommends
RUN apt-get install -y apt-utils
RUN apt-get install -y git wget vim unzip curl
RUN apt-get install -y software-properties-common
RUN apt-get install -y build-essential
RUN apt-get install -y pkg-config
RUN apt-get install -y cmake
RUN apt-get install -y git wget vim unzip
RUN apt-get -y upgrade
RUN apt-get install -y libsm6 libxext6 libxrender-dev


RUN apt-get install -y python3-dev
RUN apt-get install -y python-pip 
RUN apt-get install -y python3-pip

RUN pip install --upgrade pip
RUN pip3 install --upgrade tensorflow-gpu==1.14.0

RUN pip3 install numpy
RUN pip3 install scikit-image
RUN pip3 install scipy

RUN pip3 install matplotlib
RUN pip3 install dlib # 19.15+ version may cause conflict with pytorch in Linux, this may take several minutes. If 19.5 version raises errors, you may try 19.15+ version.
RUN pip3 install opencv-python

RUN pip3 install jupyter
RUN pip3 install jupyterlab

#!/bin/bash

#RUN pip3 install numpy

#RUN pip3 install matplotlib
#RUN pip3 install dlib==19.5.0 # 19.15+ version may cause conflict with pytorch in Linux, this may take several minutes. If 19.5 version raises errors, you may try 19.15+ version.
#RUN pip3 install opencv-python


#RUN pip3 install torch torchvision






