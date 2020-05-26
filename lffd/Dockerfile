# docker for au heatmaps
# anaconda-based installation

FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
LABEL maintainer "kyoungchin seo <kcseo@airi.kr>"

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    ca-certificates curl git vim less \
    build-essential cmake pkg-config wget

RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN apt-get install -y python3-dev python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install dlib 
RUN pip3 install opencv-python
RUN pip3 install scipy 
RUN pip3 install numpy
RUN pip3 install torch torchvision
RUN pip3 install matplotlib
RUN pip3 install scikit-image
RUN pip3 install Pillow>=4.3.0

RUN pip3 install jupyter
RUN pip3 install jupyterlab

RUN pip3 install mxnet
