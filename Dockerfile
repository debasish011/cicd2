FROM ubuntu

#install apache2 (web server)
RUN apt -y update
RUN apt -y install apache2

# home page copy from /home/index.html
# COPY index.html /var/www/html/index.html

EXPOSE 80

#start apache web server
CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
