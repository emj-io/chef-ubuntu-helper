FROM ubuntu:14.04.3
MAINTAINER Eric Johnson <eric.johnson@mycase.com>
# This container only makes Chef available via /opt/chef
# Intended to build other containers using Chef but not 

RUN apt-get -yqq update
RUN apt-get -yqq install curl lsb-release
RUN curl -L https://getchef.com/chef/install.sh | bash -s -- -v 12.5.3
RUN apt-get -yqq clean

VOLUME /opt/chef