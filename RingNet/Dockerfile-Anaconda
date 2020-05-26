#
FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

## update
RUN apt-get update && yes | apt-get upgrade

## install basic stuffs
RUN apt-get install -y \    
    python-dev \    
    curl \ 
    git \ 
    vim \
    wget \
    bzip2 \
    build-essential \    
    ca-certificates \
    cmake \
    pkg-config \
    less \ 
    sudo

## install pip
RUN apt-get install -y python-pip
#RUN apt-get install -y python3-pip

## install anaconda 
RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
RUN bash Anaconda3-2019.07-Linux-x86_64.sh -b
RUN rm Anaconda3-2019.07-Linux-x86_64.sh

## set path for anaconda
ENV PATH /root/anaconda3/bin:$PATH

## update conda packages
RUN conda update conda
RUN conda update anaconda
RUN conda update --all

## create
RUN conda create -y --name AUNets python=2.7
## activate
RUN echo "source activate AUNets" > ~/.bashrc
ENV PATH /root/anaconda3/envs/AUNets/bin:$PATH

RUN /bin/bash -c "source activate AUNets"
   
## install pytorch 0.3.1 --> instead, 0.4.1
#RUN conda install -y pytorch=0.4.1 cuda75 -c pytorch
#RUN pip install https://download.pytorch.org/whl/cu75/torch-0.3.0.post4-cp27-cp27m-linux_x86_64.whl
#RUN pip install torch torchvision

## install 
#RUN conda install -y tensorflow
#RUN pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.13.1-cp27-none-linux_x86_64.whl
#RUN pip install tensorflow-gpu==1.5.0

# source: https://github.com/BCV-Uniandes/AUNets

# dependencies
# python 2.7
# pytorch 0.3.1
# tensorflow 
# requirements.txt

# install after docker running
# conda install -y pytorch=0.4.1 cuda75 -c pytorch

# 
