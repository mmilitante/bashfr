create database if not exists `friendster`;
use `friendster`;

drop table if exists `pictures`;

CREATE TABLE `pictures` (
	`id` bigint(20) default null auto_increment,
	`path` varchar(128) NOT NULL,
	`hits` bigint(20) default 0,
	UNIQUE KEY `path` (`path`),
	PRIMARY KEY `id` (`id`)
);

