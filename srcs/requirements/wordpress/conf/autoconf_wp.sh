#!/bin/sh

sleep 10
FILE=wp-config.php
if [! -f "$FILE"]; then 
	wp config create --allow-root \
		--dbname=$SQL_DATABASE \
		--dbuser=$SQL_USER \
		--dbpass=$SQL_PASWORD \
		--dbhost=mariadb:3306 -- path='/var/www/wordpress'
fi
