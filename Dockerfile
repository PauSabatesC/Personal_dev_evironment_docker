FROM ubuntu:18.04

#ARG tool

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
    python-dev

# CREATING USER AND PERMISSIONS
RUN mkdir /home/pau
WORKDIR /home/pau
#RUN chmod -R 777 /home/pau

# INSTALLING PYTHON3 PIP and VENV
RUN apt-get -y install \
    python3-pip \
    python3-venv \
    && mkdir python_environments

# INSTALLING .NET CORE
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && add-apt-repository universe \
    && apt-get update \
    && apt-get -y install apt-transport-https \
    && apt-get update \
    && apt-get -y install dotnet-sdk-3.1

#Copiar .BASHRC
COPY ./.bashrc ~/.bashrc

#Copiar .VIMRC
#COPY 

#INSTALAR VUNDLE GIT ETC?
