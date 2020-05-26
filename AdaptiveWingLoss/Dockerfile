
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

LABEL maintainer "kyoungchin seo <kcseo@airi.kr>"

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    ca-certificates curl git vim less \
    build-essential cmake pkg-config wget \
    apt-utils unzip software-properties-common

#RUN apt-get -y upgrade

RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

#RUN apt-get install -y python3-tk libglib2.0-0

## 

#RUN pip3 install --upgrade tensorflow_gpu==1.14.0

RUN pip3 install torch torchvision 
# for cpu version. more option to see https://pytorch.org
RUN pip3 install dlib 
# 19.15+ version may cause conflict with pytorch in Linux, this may take several minutes. If 19.5 version raises errors, you may try 19.15+ version.
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN pip3 install opencv-python
RUN pip3 install scikit-image
RUN pip3 install numpy scipy matplotlib
RUN pip3 install Pillow>=4.3.0
RUN pip3 install imgaug

RUN pip3 install --upgrade tensorflow_gpu==1.14.0
RUN pip3 install git+https://github.com/lanpa/tensorboardX
RUN pip3 install joblib
RUN pip3 install torch==1.3.0
RUN pip3 install torchvision==0.4.1

#opencv-python
#scipy>=0.17.0
#scikit-image
#numpy
#matplotlib
#Pillow>=4.3.0
#imgaug
#tensorflow
#git+https://github.com/lanpa/tensorboardX
#joblib
#torch==1.3.0
#torchvision==0.4.1

RUN pip3 install jupyter
RUN pip3 install jupyterlab


#RUN pip3 install numpy

#RUN pip3 install torch torchvision

