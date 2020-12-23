# Out of this build centos image is created with SSH enabled
FROM centos

ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*

RUN yum update -y; yum install openssh* -y; yum install vim -y; yum install initscripts -y; \
yum install python3* -y; yum install python3-pip -y; \
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y; \
yum install sshpass* -y

RUN echo 'root:12345' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config  
EXPOSE 22
USER root 
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]