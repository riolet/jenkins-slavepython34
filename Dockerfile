FROM openshift/jenkins-slave-base-centos7

MAINTAINER Rohana Rezel <rohana.rezel@riolet.com>

RUN yum install python34 
RUN yum install python34-pip
RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
