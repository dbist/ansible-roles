FROM centos:7.6.1810 as base
LABEL maintainer="artemervits at gmail dot com"
LABEL version="0.0.1"

RUN yum update --assumeyes --skip-broken && \
    yum install -y \
    https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y python3-pip && \
    yum clean all

RUN pip3 install ansible --upgrade
#FROM base as ansible-base

