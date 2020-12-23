# Out of this build centos image is created with SSH enabled
FROM ubuntu

ENV container docker
RUN apt update -y; apt install ssh -y; systemctl start ssh.service;

RUN echo 'root:12345' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config  
EXPOSE 22
USER root 
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]