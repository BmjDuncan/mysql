CREATE DATABASE 'login';
use 'login';

CREATE TABLE IF NOT EXISTS 'accounts' (
	'id' int(11) NOT NULL AUTO_INCREMENT,
  	'username' varchar(50) NOT NULL,
  	'password' varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE USER 'admin'@'%' IDENTIFIED BY 'goose'; 
GRANT ALL PRIVILEGES ON . TO 'admin'@'%'; 
