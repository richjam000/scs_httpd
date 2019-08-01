FROM gitlab.scsuk.net:5005/scsuk/ext_registry/redhat/ubi7-init:7.6-23
COPY yum.repos.d/scs_repo.repo /etc/yum.repos.d
RUN yum-config-manager --disable \* && \
    yum-config-manager --enable rhel-7-server-rpms && \
    yum -y install httpd-2.4.6-89.el7_6.1 perl-5.16.3-294.el7_6.x86_64 && \
    systemctl enable httpd
