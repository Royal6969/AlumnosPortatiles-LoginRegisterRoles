DROP DATABASE  IF EXISTS `spring_security_sin_encriptar`;

CREATE DATABASE  IF NOT EXISTS `spring_security_sin_encriptar`;
USE `spring_security_sin_encriptar`;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` 
VALUES 
('Juan','{noop}123',1),
('Antonio','{noop}456',1),
('Ana','{noop}789',1),
('Laura','{noop}321',1);

INSERT INTO `authorities` 
VALUES 
('Juan','ROLE_USUARIO'),
('Juan','ROLE_ADMINISTRADOR'),
('Antonio','ROLE_USUARIO'),
('Ana','ROLE_USUARIO'),
('Ana','ROLE_AYUDANTE'),
('Laura','ROLE_USUARIO'),
('Laura','ROLE_ADMINISTRADOR');