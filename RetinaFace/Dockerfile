
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

LABEL maintainer "kyoungchin seo <kcseo@airi.kr>"

RUN apt-get -y update
RUN apt-get install -y --no-install-recommends \
    ca-certificates curl git vim less \
    build-essential cmake pkg-config wget \
    apt-utils unzip software-properties-common


#RUN apt-get -y upgrade


RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip


RUN pip3 install torch torchvision 
# for cpu version. more option to see https://pytorch.org
RUN pip3 install numpy scipy matplotlib
RUN pip3 install dlib 
# 19.15+ version may cause conflict with pytorch in Linux, this may take several minutes. If 19.5 version raises errors, you may try 19.15+ version.
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN pip3 install opencv-python

RUN pip3 install jupyter
RUN pip3 install jupyterlab


