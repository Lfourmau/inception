# mysql -uroot -p
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';
GRANT ALL ON *.* TO 'wordpress'@'%' IDENTIFIED BY 'wordpress';
FLUSH PRIVILEGES;
\q