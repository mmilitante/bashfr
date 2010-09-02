create database if not exists `friendster`;
use `friendster`;

drop table if exists `crawled`;

CREATE TABLE `crawled` (
	`id` bigint(20) default null auto_increment,
	`uid` bigint(20) default null,
	`browsed` timestamp default current_timestamp,
	UNIQUE KEY `uid` (`uid`),
	PRIMARY KEY `id` (`id`)
);


