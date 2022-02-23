# mysql -uroot
ALTER USER 'root'@'localhost' IDENTIFIED BY 'mysql_root_pw';
--mysqladmin -u root password "1234"
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
CREATE DATABASE IF NOT EXISTS mysql_database;
CREATE USER IF NOT EXISTS 'mysql_user'@'%' IDENTIFIED BY 'mysql_pw';
GRANT ALL ON *.* TO 'mysql_user'@'%' IDENTIFIED BY 'mysql_pw';
FLUSH PRIVILEGES;
\q