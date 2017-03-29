FROM openshift/jenkins-slave-base-centos7

MAINTAINER Rohana Rezel <rohana.rezel@riolet.com>

RUN yum install centos-release-scl
RUN yum install rh-python34 
RUN yum install rh-python34-python-pip
RUN yum install rh-python34-python-setuptools
RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
