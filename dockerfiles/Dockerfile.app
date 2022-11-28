FROM centos:7

RUN yum install -y httpd

COPY index.html /var/www/html/index.html
COPY httpd.conf /etc/httpd/conf/httpd.conf

ARG APP_NAME='app1'

RUN sed -i -r "s/host_name/${APP_NAME}/g" /var/www/html/index.html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
