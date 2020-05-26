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
RUN pip install --upgrade pip==19.1.1 
#RUN apt-get install -y python3-pip

## install virtualenv
RUN pip install virtualenv

#RUN git clone https://github.com/soubhiksanyal/RingNet.git && \
#    cd RingNet && \
#    pip install -r requirements.txt && \
#    pip install opendr==0.77

## install anaconda 
#RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
#RUN bash Anaconda3-2019.07-Linux-x86_64.sh -b
#RUN rm Anaconda3-2019.07-Linux-x86_64.sh

## set path for anaconda
#ENV PATH /root/anaconda3/bin:$PATH

## update conda packages
#RUN conda update conda
#RUN conda update anaconda
#RUN conda update --all

## create
#RUN conda create -y --name AUNets python=2.7
## activate
#RUN echo "source activate AUNets" > ~/.bashrc
#ENV PATH /root/anaconda3/envs/AUNets/bin:$PATH

#RUN /bin/bash -c "source activate AUNets"
   
## install pytorch 0.3.1 --> instead, 0.4.1
#RUN conda install -y pytorch=0.4.1 cuda75 -c pytorch
#RUN pip install https://download.pytorch.org/whl/cu75/torch-0.3.0.post4-cp27-cp27m-linux_x86_64.whl
#RUN pip install torch torchvision

## install 
#RUN conda install -y tensorflow
#RUN pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.13.1-cp27-none-linux_x86_64.whl
#RUN pip install tensorflow-gpu==1.5.0

# source: https://github.com/BCV-Uniandes/AUNets

# RUN git clone https://github.com/BCV-Uniandes/AUNets.git 
#RUN cd AUNets && \
#    pip install -r requirements.txt

# before installing requirements.txt 
#RUN pip install numpy
#RUN pip install -U git+https://github.com/szagoruyko/pytorchviz
#RUN pip install matplotlib
#RUN pip install scikit-image

# requirements.txt
# RUN pip install scipy==1.0.0 \
#                 torch==0.3.1 \
#                 tensorflow==1.5.0 \
#                 openpyxl==2.4.7 \
#                 six==1.10.0 \
#                 pandas==0.18.1 \
#                 graphviz==0.8 \
#                 imageio==2.1.2 \
#                 tqdm==4.11.2 \
#                 scikit_image==0.10.1 \
#                 torchvision==0.2.0 \
#                 ipdb==0.10.1 \
#                 Wand==0.4.4 \
#                 Pillow==5.1.0 \
#                 matlab==0.1 \
#                 ops==0.4.7 \                
#                 scikit_learn==0.19.1 \
#                 xlsxwriter==1.0.4

# dependencies
# python 2.7
# pytorch 0.3.1
# tensorflow 
# requirements.txt

# install after docker running
# conda install -y pytorch=0.4.1 cuda75 -c pytorch

# 
