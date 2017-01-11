############################################################
# Dockerfile to run a load balancer 
# Based on nginx image
############################################################

# Setting the base image to use to nginx
FROM nginx

# Setting the file maintainer (your name - the file's author)
MAINTAINER Carlos Klinsmann


RUN mkdir -p /etc/nginx/templates

COPY templates/* /etc/nginx/templates/

COPY docker-gen /opt/

ENV DOCKER_HOST unix:///tmp/docker.sock

ENTRYPOINT ["/opt/docker-gen","-only-exposed","-watch","-notify-sighup","nginx_container1","/etc/nginx/templates/nginx.tmpl","/etc/nginx/conf.d/default.conf"]



