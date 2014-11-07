# This is a centos 6 image id
FROM 70441cac1ed5

MAINTAINER nicktgr15

# Install httpd and configure it to autostart
RUN yum install httpd -y
RUN chkconfig httpd on

# start all system services at runlevel 3
ENTRYPOINT /sbin/init 3
