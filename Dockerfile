FROM ubuntu:14.04.3
MAINTAINER Eric Johnson <eric.johnson@mycase.com>

ENV CHEFDK_VERSION=0.9.0
ENV CHEF_VERSION=12.5.1
ENV CHEFDK_VERSION=0.9.0

RUN apt-get -yqq update
RUN apt-get -yqq install curl lsb-release git
#RUN curl -L https://getchef.com/chef/install.sh | bash -s -- -v "$CHEF_VERSION"
RUN curl -LO https://www.chef.io/chef/install.sh && sudo bash ./install.sh -P chefdk -v "$CHEFDK_VERSION" && rm install.sh
RUN apt-get -yqq clean

