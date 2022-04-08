FROM debian:buster

# Installation of php-fpm, php-mysql
# Installation of wget in order to install the wordpress client user interface (wp cli)
RUN apt-get update && apt-get install -y \
	php-fpm \
	php-mysql \
	wget

# Create wordpress directory
RUN mkdir --parents /var/www/html/wordpress/

# Copy the wp-config.php file to the wordpress directory, it's needed for installation later
COPY wp-config.php /var/www/html/wordpress/

### Moving the file and changing its permissions to executable are both necessary to use wp cli from the command line as 'wp'###
# Download wp cli with wget, move it in PATH with --output-document option
RUN wget --output-document='/usr/local/bin/wp' https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# Make wp executable
RUN chmod +x /usr/local/bin/wp

# 
# RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf

# See if there are any updates and start the wordpress download
RUN wp cli update
RUN wp core download	--allow-root								\
						--path=/var/www/html/wordpress/

# Expose port
EXPOSE 9000

# Install wordpress 
CMD wp core install		--allow-root								\
						--path=/var/www/html/wordpress/				\
						--url=https://localhost:3306/				\
						--title=INeedCoffee							\
						--admin_user=superuser						\
						--admin_password=coffee						\
						--admin_email=tessa.vanderloo@outlook.com	\
	&& /etc/init.d/php-fpm start

	
