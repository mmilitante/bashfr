create database if not exists `friendster`;
use `friendster`;

drop table if exists `names`;

CREATE TABLE `names` (
	`id` bigint(20) default null auto_increment,
	`firstname` varchar(128) NOT NULL,
	`secondname` varchar(128) NOT NULL,
	`middlename` varchar(128) NOT NULL,
	`lastname` varchar(128) NOT NULL,
	UNIQUE KEY `complete` (`lastname`, `firstname`, `secondname`, `middlename`),
	PRIMARY KEY `id` (`id`)
);

