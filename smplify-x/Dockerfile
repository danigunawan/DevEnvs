FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

## update
RUN apt-get update && yes | apt-get upgrade

## install basic stuffs
RUN apt-get install -y \    
    python3-dev \
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
RUN apt-get install -y python3-pip

# # Add user ubuntu with no password, add to sudo group
# RUN adduser --disabled-password --gecos '' ubuntu
# RUN adduser ubuntu sudo
# RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
# USER ubuntu
# WORKDIR /home/ubuntu/
# RUN chmod a+rwx /home/ubuntu/
# #RUN echo `pwd`

## anaconda installation
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
RUN conda create -y --name smplifyx python=3.7 
## activate

#RUN /bin/bash -c "conda activate smplifyx && \
#    "

RUN echo "source activate smplifyx" > ~/.bashrc
ENV PATH /root/anaconda3/envs/smplifyx/bin:$PATH

RUN /bin/bash -c "source activate smplifyx" 

# install pytorch
RUN pip install torch torchvision

## install smplx
RUN pip install smplx

# ## install vposer & dependencies
RUN pip install git+https://github.com/nghorbani/configer
RUN pip install torchgeometry==0.1.2

RUN pip install pyrender

RUN wget https://github.com/mmatl/travis_debs/raw/master/xenial/mesa_18.3.3-0.deb && \
    dpkg -i ./mesa_18.3.3-0.deb || true && \
    apt install -y -f

RUN pip install git+https://github.com/nghorbani/human_body_prior


# ## install homogenus 
RUN pip install git+https://github.com/nghorbani/homogenus

RUN pip install torch torchvision


# inside folder
# pip install -r requirement.txt

# libxrender missing error
# sudo apt-get install -y libxrender-dev


# apt-get
#python smplifyx/main.py --config cfg_files/fit_smplx.yaml --data_folder DATA_FOLDER --output_folder OUTPUT_FOLDER --visualize="True/False"--model_folder MODEL_FOLDER--vposer_ckpt VPOSER_FOLDER--part_segm_fn smplx_parts_segm.pkl
# folder 

# ## install tensorflow and keras
# #RUN pip --no-cache-dir install \
# #    tensorflow_gpu==${TENSORFLOW} \
# #    keras==${KERAS}