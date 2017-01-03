############################################################
# Dockerfile to run a load balancer 
# Based on nginx image
############################################################

# Setting the base image to use to nginx
FROM nginx

# Setting the file maintainer (your name - the file's author)
MAINTAINER Carlos Klinsmann

#Changing nginx configuration by adding a custom one
#ADD default.conf /etc/nginx/conf.d/default.conf

ADD nginx.conf /etc/nginx/nginx.conf







