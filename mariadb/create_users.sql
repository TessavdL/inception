CREATE USER IF NOT EXISTS 'superuser'@'localhost' IDENTIFIED BY 'coffee';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'superuser'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER IF NOT EXISTS 'superuser'@'%' IDENTIFIED BY 'coffee';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'superuser'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER IF NOT EXISTS 'basicuser'@'localhost' IDENTIFIED BY 'password';
GRANT USAGE ON wordpress_db.* TO 'basicuser'@localhost;
FLUSH PRIVILEGES;
EXIT