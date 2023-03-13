FROM centos:7

RUN yum install -y openssh-server net-tools vim

RUN ssh-keygen -A

RUN echo redhat | passwd root --stdin

CMD /usr/sbin/sshd -D
