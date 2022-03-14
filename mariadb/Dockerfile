FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

COPY configuration.sql var/
RUN service mysql start && \
	mysql -u root mysql < var/configuration.sql

CMD service mysql start
