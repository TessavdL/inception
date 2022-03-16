FROM debian:buster

# Basic installation of MariaDB
RUN apt-get update && apt-get install -y \
	mariadb-server

# Sequre installation of MariaDB
# COPY mysql_secure_installation.sql .
# ENV MARIADB_ROOT_PASSWORD=f3J9Qnb67hM0ff
# RUN sed -i 's@'\(\'root\'\)'@'\(\'"$MARIADB_ROOT_PASSWORD"\'\)'@g' mysql_secure_installation.sql
# RUN service mysql start && mysql -sf --user=root < mysql_secure_installation.sql

# Create wordpress database
# COPY create_wordpress_database.sql .
# RUN service mysql start && \
# 	mysql --password="$MARIADB_ROOT_PASSWORD" --user=root < conf.sql

# Create two users, one with admin rights and one without rights


EXPOSE 3306

CMD service mysql start
