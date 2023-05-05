FROM	debian:buster

RUN		apt update -y && apt upgrade -y
RUN		apt-get install mariadb-server -y

COPY	conf/mariadb.cnf /etc/mysql/mariadb.cnf

COPY	script_db.sh /etc/script_db.sh
RUN		chmod +x /etc/script_db.sh
CMD		/etc/script_db.sh
