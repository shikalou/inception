FROM	debian:buster

RUN		apt update -y && apt upgrade -y

RUN		mkdir -p /etc/nginx/ssl
RUN		mkdir -p /var/run/nginx

RUN		apt install nginx \
		vim \
		curl \
		openssl -y

#RUN		openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=ldinaut.42.fr/UID=ldinaut"

#EXPOSE	8080
#ENTRYPOINT	["nginx"]
#CMD	["-g", "daemon off;"]
