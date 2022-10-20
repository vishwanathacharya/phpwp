FROM php:7.2-fpm-stretch
COPY index.php /usr/share/nginx/html/
COPY ./wordpress /usr/share/nginx/html/
RUN apt-get update
RUN apt-get install -y libcurl4-openssl-dev ssh nano pkg-config libssl-dev
#RUN echo "session.save_path=\"/app/tmp\"" >> "$PHP_INI_DIR/php.ini"
#RUN rm -rf /etc/php/7.2/fpm/php.ini
#COPY php.ini /etc/php/7.2/fpm/
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
#RUN apt install -y software-properties-common
#RUN add-apt-repository ppa:ondrej/php -y
#RUN apt-get -y update
#RUN apt install -y php:7.2-mysql
#RUN apt install -y php:7.2-fpm
