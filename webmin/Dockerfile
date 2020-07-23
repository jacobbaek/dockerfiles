FROM centos:7

MAINTAINER Jacobbaek (dubaek@gmail.com)

ADD webmin.repo /etc/yum.repos.d/webmin.repo
ADD jcameron-key.asc jcameron-key.asc
RUN rpm --import jcameron-key.asc

RUN yum -y install systemd; yum clean all; \
(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

RUN yum install -y webmin initscripts
RUN echo 'password' | passwd --stdin root

VOLUME [ "/sys/fs/cgroup" ]

# Below things doesn't use at this moment.
#RUN echo "nofork=1" >> /etc/webmin/miniserv.conf
#CMD /etc/webmin/start

CMD ["/usr/sbin/init"]
