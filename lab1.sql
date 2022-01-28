CREATE DATABASE lab1_db;

CREATE TABLE IF NOT EXISTS `user_login` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `username` varchar(50) NOT NULL,
 `email` varchar(50) NOT NULL,
 `password` varchar(50) NOT NULL,
 `date_and_time` datetime NOT NULL,
 PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `complaint_form` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `user_id` int(11) NOT NULL,  
 `complaints` text NOT NULL,
 `date` date NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `time` time NOT NULL,
 `timestamp` varchar(15) NOT NULL,
 PRIMARY KEY (`id`),
 FOREIGN KEY(user_id) REFERENCES user_login(id)
);
