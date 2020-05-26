# docker for au heatmaps
# anaconda-based installation

FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    ca-certificates curl git vim less \
    build-essential cmake pkg-config wget

RUN apt-get install -y libsm6 libxext6 libxrender-dev

RUN apt-get install -y python3-dev python3-pip python3-tk
RUN pip3 install --upgrade pip
RUN pip3 install dlib 
RUN pip3 install opencv-python
RUN pip3 install scipy 
RUN pip3 install numpy
RUN pip3 install torch torchvision
RUN pip3 install matplotlib

#RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh && \
#    sh -y Anaconda3-2019.07-Linux-x86_64.sh

#RUN pip install dlib && \
#    pip install cv2

# install dlib
# pip install dlib

# install opencv 
# pip install cv2 --> error
# pip install opency-python --> import cv2 error

# conda install opencv --> it works!

# install additional libraries
# pip install scipy
# pip install matplotlib

# install pytorch
# conda install pytorch torchvision cudatoolkit=9.2 -c pytorch

# dlib detecter
# wget http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2
# bzip2 -d shape_predictor_68_face_landmarks.dat.bz2 



