FROM gitlab.scsuk.net:5005/scsuk/ext_registry/redhat/ubi7-init:7.6-23
RUN yum -y install httpd-2.4.6-89.el7_6.1 perl-5.16.3-294.el7_6.x86_64 && \
    rm /etc/httpd/conf.d/welcome.conf && \
    systemctl enable httpd
COPY webfiles/scs_http.conf /etc/httpd/conf.d/
