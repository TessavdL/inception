FROM debian:buster

# Basic installation of wget so we can install the WordPress Client User Interface (WP CLI)
RUN apt-get update && apt-get install -y \
	php-fpm \
	wget

# # Download WP CLI with wget
# RUN mkdir --parents /var/www/html/wordpress/
# RUN wget --output-document='/usr/local/bin/wp' https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# # In order to use WP CLI from the command line
# RUN chmod +x /usr/local/bin/wp 
# RUN wp cli update
# RUN wp core download --allow-root --path=/var/www/html/wordpress/
# RUN service mysql start && \
#         wp core install --allow-root --path=/var/www/html/wordpress/ --url=https://localhost/wordpress --title=INeedCoffee --admin_user=Tessa --admin_password=coffee --admin_email=tessa.vanderloo@outlook.com

# RUN chown -R www-data:www-data /var/www
# RUN chmod 755 -R /var/www

EXPOSE 9000

CMD bash