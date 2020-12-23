# Out of this build centos image is created with applications [Jenkins, Terraform and Ansible]
FROM centos-ssh
ENV container docker
# Install packages
RUN yum install wget -y; yum install unzip -y; yum install java-1.8.0-openjdk-devel -y;
# Install Jenkins
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo; \
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key; \
yum install jenkins -y;
# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_linux_amd64.zip -P /tmp; \
unzip /tmp/terraform_0.13.2_linux_amd64.zip;
# Install ansible
RUN pip3 install ansible;