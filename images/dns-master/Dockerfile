FROM ubuntu:14.04
MAINTAINER zhouxin <zhouxin5253@163.com>

ADD sources.list /etc/apt/sources.list
ADD bind9.tar /root/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apt-get update 
RUN apt-get install bind9 bind9utils -y  
RUN apt-get remove bind9 -y 
RUN apt-get build-dep bind9 -y 
RUN apt-get install libmysqlclient-dev -y 
RUN dpkg -i /root/*.deb && rm -f /root/*.deb



# Set environment variables.
ENV HOME=/root \
    container=docker \
    LANG=en_US.utf8

CMD /usr/sbin/named -c /etc/bind/named.conf &&  tail -f /var/cache/bind/query.log

