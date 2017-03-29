FROM openshift/jenkins-slave-base-centos7

MAINTAINER Rohana Rezel <rohana.rezel@riolet.com>

RUN yum install -y gcc
RUN yum install -y wget
RUN yum install -y make
RUN wget https://www.python.org/ftp/python/3.4.6/Python-3.4.6.tar.xz
RUN tar xvf Python-3.4.6.tar.xz
WORKDIR Python-3.4.6
RUN ls
RUN ./configure
RUN make
RUN make altinstall
RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME
USER 1001

