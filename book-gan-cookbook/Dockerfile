FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
ARG KERAS=2.2.0
ARG TENSORFLOW=1.8.0

RUN apt-get update

RUN apt-get install -y \    
    python3-dev \
    curl \ 
    git \ 
    vim \
    wget \
    build-essential \    
    ca-certificates \
    cmake \
    pkg-config \
    less

## install pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

## install tensorflow and keras
RUN pip --no-cache-dir install \
    tensorflow_gpu==${TENSORFLOW} \
    keras==${KERAS}



## download source
# git clone https://github.com/PacktPublishing/Generative-Adversarial-Networks-Cookbook.git

## exec
# nvidia-docker run --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -p 5000:5000 -p 8888:8888 -it -v $(pwd):/workspace autheatmaps:1.0 /bin/bash
