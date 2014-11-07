## README
This an example about running httpd (or any other service) in a docker container based on centos 6.

To use it:

```
git clone https://github.com/nicktgr15/docker-centos-service-example docker-centos-service-example
cd docker-centos-service-example
sudo docker build -t myhttpd .
sudo docker run -d -p 8888:80 myhttpd
```

where 

- `-p 8888:80`:  exposes container's port 80 to host's 8888
- `-d`: runs in detached mode (i.e. in the background)

To verify that the apache web server is running: `curl localhost:8888`

