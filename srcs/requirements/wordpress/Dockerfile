FROM	debian:buster

RUN		apt update -y && apt upgrade -y

RUN		apt-get install -y wget \
		php7.3 -y \
		php-fpm -y \
		php-mysql -y \
		mariadb-client -y

RUN		wget https://fr.wordpress.org/wordpress-6.2-fr_FR.tar.gz -P /var/www
RUN		cd /var/www && tar -xzf wordpress-6.2-fr_FR.tar.gz && rm -f wordpress-6.2-fr_FR.tar.gz
RUN		chown -R root:root /var/www/wordpress

COPY	conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN		chmod +x wp-cli.phar && mv wp-cli.phar /usr/bin/wp
ENTRYPOINT [ "/usr/sbin/php-fpm7.3", "-F" ]
