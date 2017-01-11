# load_balancer


a named volume is already within the image to modify the config file on the fly

there is a base template which is translated into nginx configuration and it adds or removes hosts from the load balancer once new container from bolek or lolek are created

It has to be run the following way in order to have the functionality


docker run -d -p 80:80 --name "nginx_container1" dockertestenv/improved_nginx

docker run -d -v /var/run/docker.sock:/tmp/docker.sock:ro --volumes-from nginx_container1 --name nginx dockertestenv/nginx_load_balancer


