FROM centos:centos7.6.1810
MAINTAINER zhoub

RUN yum update -y
RUN yum install -y rpm-build
COPY ./CentOS-Ceph.repo /etc/yum.repos.d/CentOS-Ceph.repo
RUN rpm --import 'https://download.ceph.com/keys/release.asc'
RUN yum install -y epel-release
RUN yum install -y ceph-devel-compat
RUN yum install -y git
RUN yum install -y make
RUN yum install -y golang

ENV all_proxy=socks5://192.168.1.248:1086
ENV https_proxy=socks5://192.168.1.248:1086

COPY ./entrypoint.sh /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
