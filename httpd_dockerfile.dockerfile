FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    apache2
RUN rm /var/www/html/index.html
COPY index.html /var/www/html/

CMD ["apache2ctl", "-D","FOREGROUND"]