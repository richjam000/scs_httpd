FROM gitlab.scsuk.net:5005/scs-systems/phase-2/centos-systemd:1.0
RUN yum -y install httpd; yum clean all; systemctl enable httpd.service
CMD ["/usr/sbin/init"]
