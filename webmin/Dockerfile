FROM centos:7

MAINTAINER Jacobbaek (dubaek@gmail.com)

ADD webmin.repo /etc/yum.repos.d/webmin.repo
ADD jcameron-key.asc jcameron-key.asc
RUN rpm --import jcameron-key.asc

RUN yum install -y webmin
RUN echo 'password' | passwd --stdin root
RUN echo "nofork=1" >> /etc/webmin/miniserv.conf

CMD /etc/webmin/start
