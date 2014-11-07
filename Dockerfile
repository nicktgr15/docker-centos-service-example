# From repository:image
FROM centos:centos6

MAINTAINER nicktgr15

# Install httpd and configure it to autostart
RUN yum install httpd -y
RUN chkconfig httpd on

# start all system services at runlevel 3
ENTRYPOINT /sbin/init 3
