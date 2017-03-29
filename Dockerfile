FROM openshift/jenkins-slave-base-centos7

MAINTAINER Rohana Rezel <rohana.rezel@riolet.com>

RUN yum install -y centos-release-scl
RUN yum install -y rh-python34
ENV HOME /opt/app-root/src
RUN mkdir -p ${HOME} && \
    useradd -u 1001 -r -g 0 -d ${HOME} -s /sbin/nologin \
            -c "Default Application User" default && \
    chown -R 1001:0 /opt/app-root
ENTRYPOINT ["/usr/bin/scl", "enable", "rh-python34"]
USER 1001
