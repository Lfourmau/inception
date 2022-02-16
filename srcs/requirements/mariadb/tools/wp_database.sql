# mysql -uroot
ALTER USER 'root'@'localhost' IDENTIFIED BY 'mysql_root_pw';
CREATE DATABASE IF NOT EXISTS mysql_database DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'mysql_user'@'%' IDENTIFIED BY 'mysql_pw';
GRANT ALL ON *.* TO 'mysql_database'@'%' IDENTIFIED BY 'mysql_pw';
FLUSH PRIVILEGES;
\q