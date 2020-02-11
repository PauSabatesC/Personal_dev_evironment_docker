FROM ubuntu:18.04

ARG tool

# UP TO DATE UPDATES
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install  \
    curl \
    git \
    build-essential \
    g++ \
    lsb-core \
    software-properties-common \
    wget \
    zlib1g-dev \
    libssl-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libreadline-dev \
    libffi-dev \

# CREATING USER AND PERMISSIONS
RUN mkdir /home/pau
WORKDIR /home/pau

RUN chmod -R 777 /home/pau

#add pau as sudo

# CREATING DESIRED FOLDER STRUCTURE

WORKDIR /the/workdir/path


# IF tool=python...etc
# INSTALLING PYTHON3
#INSTALLING PIP
# INSTALLING VENV


# INSTALLING .NET CORE


#RUN echo "$tool"

#POSAR ALIAS AL BASHRC ()

#INSTALAR VUNDLE GIT ETC?

#Install VSCODE

#change to user pau
