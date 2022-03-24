FROM debian:buster

# Basic installation of MariaDB
RUN apt-get update && apt-get install -y \
	mariadb-server

# Sequre installation of MariaDB
# ENV MARIADB_ROOT_PASSWORD=f3J9Qnb67hM0ff
COPY create_wordpress_database.sql .
RUN service mysql start && \
	mysql -e "UPDATE mysql.user SET plugin ='mysql_native_password', Password = PASSWORD('123') WHERE User = 'root'" && \
	printf "123\n n\n n\n n\n y\n y\n y\n" | mysql_secure_installation
	# mysql --user=root --password=123 < create_wordpress_database.sql

# # # Create wordpress database
# RUN service mysql start && mysql --user=root --password=123 < create_wordpress_database.sql

# Create two users, one with admin rights and one without rights

EXPOSE 3306

# ENTRYPOINT ["/bin/bash"]
# CMD ["service", "mysql", "start"]

# docker build -t mariadb .
# docker run --rm  -it  --name mariadbcontainer -p 3306:3306 mariadb "service" "mysql" "start" "--user=root" "password=123"