FROM debian:buster

# Install nginx and openssl
RUN apt-get update && apt-get install -y \
	nginx \
	openssl

# Configuration of nginx
COPY nginx.conf /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/ && \
	unlink /etc/nginx/sites-enabled/default

# Create ssl certificate and ssl key with openssl
RUN openssl genrsa -out /etc/ssl/certs/tevan-de.key 2048 && \
	openssl req -x509 -days 356 -nodes -new -key /etc/ssl/certs/tevan-de.key \
	-subj '/C=NL/ST=NH/L=Amsterdam/O=Codam/CN=tevan-de' -out /etc/ssl/certs/tevan-de.crt

# Expose ports
EXPOSE 80 443

# Start nginx
CMD [ "nginx", "-g", "daemon off;" ]
