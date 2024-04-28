1. This is a dockerfile, that contains a static webapp.

2. phusion/baseimage:jammy-1.0.1 --> This is the base image, saves our container from orphaned child process and zombie process.
3. CMD ["/sbin/my_init"] --> This command starts init process that reaps orphaned child processes correctly.
4. ENV DEBIAN_FRONTEND=noninteractive --> This makes build process noninteractive
5. CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"] --> This starts apache2 service
6. EXPOSE 80 --> Enabling port 80 on container
7. WORKDIR /var/www/html --> Our app will store in this dir
8. VOLUME /var/log/apache2 --> Service logs can be tracked from here
9. ADD interio.tar.gz /var/www/html --> Unarchiving and copying app into the dir

10. Documentation for baseimage can be found here :- https://phusion.github.io/baseimage-docker/
11. Docker image can be found here : https://hub.docker.com/r/dev4devops/interio

12. To run a container from this image:- 
13. Run below command after installing docker in your EC2 instance or VM
14. docker run -d --name mywebapp -p 80:80 dev4devops/interio:intimg1
15. Find IP of your machin and type that IP into your browser.
![image](https://github.com/dev4divine/dev4devops/assets/37863153/1195570c-ff35-42af-992b-e70f3db3e7b2)
