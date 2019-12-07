FROM debian:9
RUN apt-get update
RUN apt-get install apache2 -y
RUN echo "WELCOME" > /var/www/html/index.html
CMD ["apache2ctl", "-D","FOREGROUND"]
copy . /var/www/html
#CMD tail -f /var/log/apache2/access.log
