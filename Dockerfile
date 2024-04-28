FROM phusion/baseimage:jammy-1.0.1
CMD ["/sbin/my_init"]
LABEL "Author"="Dev"
LABEL "Project"="Interior Projecct"
ENV DEBIAN_FRONTEND=noninteractive
<<<<<<< HEAD
=======

>>>>>>> 61cd018 (docker image)
RUN apt update && apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
<<<<<<< HEAD
=======










>>>>>>> 61cd018 (docker image)
ADD interio.tar.gz /var/www/html
