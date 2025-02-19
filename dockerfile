FROM ubuntu:latest 

RUN apt update && apt install -y apache2 php libapache2-mod-php php-mysql

COPY index.php /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
