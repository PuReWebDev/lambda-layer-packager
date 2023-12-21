FROM amazonlinux:2018.03
RUN ulimit -n 1024 && yum -y update && yum -y install \
    gcc \
    gcc-c++ \
    make \
    openssl-devel \
    libffi-devel \
    python39 \
    python39-devel \
    python39-pip \
    python39-setuptools \
    python39-virtualenv \
    zip \
    unzip \
    && yum clean all

RUN python3 -m pip install pip==22.1.2
RUN pip install virtualenv==20.14.1