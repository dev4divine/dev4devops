This is a dockerfile, that contains a static webapp.
-----------------------------------------------------------------------------------------------------------------------------
phusion/baseimage:jammy-1.0.1 --> This is the base image, saves our container from orphaned child process and zombie process.
CMD ["/sbin/my_init"] --> This command starts init process that reaps orphaned child processes correctly.
ENV DEBIAN_FRONTEND=noninteractive --> This makes build process noninteractive
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"] --> This starts apache2 service
EXPOSE 80 --> Enabling port 80 on container
WORKDIR /var/www/html --> Our app will store in this dir
VOLUME /var/log/apache2 --> Service logs can be tracked from here
ADD interio.tar.gz /var/www/html --> Unarchiving and copying app into the dir
-----------------------------------------------------------------------------------------------------------------------------
Documentation for baseimage can be found here :- https://phusion.github.io/baseimage-docker/
Docker image can be found here : https://hub.docker.com/r/dev4devops/interio

To run a container from this image:- 
Run below command after installing docker in your EC2 instance or VM
docker run -d --name mywebapp -p 80:80 dev4devops/interio:intimg1
Find IP of your machin and type that IP into your browser.
