# mysql -uroot
ALTER USER 'root'@'localhost' IDENTIFIED BY 'wordpress';
--mysqladmin -u root password "1234"
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'wordpress';
GRANT ALL ON *.* TO 'wordpress'@'%' IDENTIFIED BY 'wordpress';
FLUSH PRIVILEGES;
\q