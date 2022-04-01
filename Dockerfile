#specify the base image
FROM centos:7

#add a tag
LABEL maintainer="Amena the amazing student"

#update our package
RUN yum -y update && yum clean all

#Install Apache
RUN yum install -y httpd

#copy the app inside the container
COPY index.html /var/www/html/

#port on which the container should listen
EXPOSE 80

#run httpd by doing systmctl start httpd
ENTRYPOINT [ "/usr/sbin/httpd" ]