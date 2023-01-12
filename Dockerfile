FROM centos:latest
MAINTAINER shwetashubh0409@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/creative-studio.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip creative-studio.zip
RUN cp -rvf creative-studio/* .
RUN rm -rf creative-studio creative-studio.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
