# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
# If you prefer miniconda:
#FROM continuumio/miniconda3

LABEL Name=totalcapture Version=0.0.1
EXPOSE 3000


RUN apt-get update && apt-get install -y apt-utils && apt-get install -y curl
RUN apt-get -y install python3-pip
RUN apt-get -y upgrade
RUN apt-get install -y build-essential
RUN apt-get install -y pkg-config
RUN apt-get install -y cmake
RUN apt-get install -y git wget vim unzip

RUN apt-get install -y python2.7-dev python3-dev 
RUN apt-get install -y python-numpy python3-numpy

RUN apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev
RUN apt-get install -y libv4l-dev v4l-utils
RUN apt-get install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev 
RUN apt-get install -y libqt4-dev 
RUN apt-get install -y mesa-utils libgl1-mesa-dri libqt4-opengl-dev 
RUN apt-get install -y libatlas-base-dev gfortran libeigen3-dev


WORKDIR /workspace
RUN mkdir opencv
WORKDIR /workspace/opencv
#RUN cd opencv
RUN wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.0.zip
RUN unzip opencv.zip
RUN wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.0.zip
RUN unzip opencv_contrib.zip

WORKDIR /workspace/opencv/opencv-3.4.0/
#RUN cd opencv-3.4.0/
RUN mkdir build
WORKDIR /workspace/opencv/opencv-3.4.0/build/
#RUN cd build

RUN cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=OFF -D WITH_IPP=OFF -D WITH_1394=OFF -D BUILD_WITH_DEBUG_INFO=OFF -D BUILD_DOCS=OFF -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=OFF -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D WITH_QT=ON -D WITH_CUDA=OFF -D WITH_OPENGL=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.4.0/modules -D WITH_V4L=ON -D WITH_FFMPEG=ON -D WITH_XINE=ON -D BUILD_NEW_PYTHON_SUPPORT=ON ..

RUN make -j4
RUN make install
RUN sh -c 'echo '/usr/local/lib' > /etc/ld.so.conf.d/opencv.conf'
RUN ldconfig


#
RUN apt-get install -y ffmpeg
RUN pip3 install matplotlib==2.1.0

# 
RUN pip3 install tensorflow-gpu==1.5.0

# Ceres Solver
# http://ceres-solver.org/installation.html
# add-apt-repository
RUN apt-get install -y software-properties-common

# RUN apt-get install cmake
# google-glog + gflags
RUN apt-get install -y libgoogle-glog-dev
# BLAS & LAPACK
RUN apt-get install -y libatlas-base-dev
# Eigen3
RUN apt-get install -y libeigen3-dev
# SuiteSparse and CXSparse (optional)
# - If you want to build Ceres as a *static* library (the default)
#   you can use the SuiteSparse package in the main Ubuntu package
#   repository:
RUN apt-get install -y libsuitesparse-dev
# - However, if you want to build Ceres as a *shared* library, you must
#   add the following PPA:
#RUN add-apt-repository -y ppa:bzindovic/suitesparse-bugfix-1319687
#RUN apt-get update
#RUN apt-get install -y libsuitesparse-dev

WORKDIR /workspace/ceres/
RUN wget https://github.com/ceres-solver/ceres-solver/archive/1.13.0.tar.gz

RUN tar zxf 1.13.0.tar.gz
RUN mkdir ceres-bin

WORKDIR /workspace/ceres/ceres-bin
# cd ceres-bin
RUN cmake ../ceres-solver-1.13.0
RUN make -j3
RUN make test
# Optionally install Ceres, it can also be exported using CMake which
# allows Ceres to be used without requiring installation, see the documentation
# for the EXPORT_BUILD_DIR option for more information.
RUN make install


# opengl,glut,glew
RUN apt-get install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev
RUN apt-get install -y libglew-dev

# docker rmi $(docker images -f "dangling=true" -q)


# Using pip:
#RUN python3 -m pip install -r requirements.txt
#CMD ["python3", "-m", "docker_practice"]

# Using pipenv:
#RUN python3 -m pip install pipenv
#RUN pipenv install --ignore-pipfile
#CMD ["pipenv", "run", "python3", "-m", "docker_practice"]

# Using miniconda (make sure to replace 'myenv' w/ your environment name):
#RUN conda env create -f environment.yml
#CMD /bin/bash -c "source activate myenv && python3 -m docker_practice"




WORKDIR /workspace
ADD . /workspace
