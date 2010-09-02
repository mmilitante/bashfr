create database if not exists friendster;
use friendster;

drop table if exists bots;
drop table if exists apps;

CREATE TABLE `bots` (
	`email` varchar(128) NOT NULL,
	`password` varchar(128) NOT NULL,
	`url` varchar(128) NOT NULL,
	`status` varchar(128) NOT NULL,
	`type` varchar(128) NOT NULL,
	`updated` timestamp default current_timestamp,
	`batch` varchar(128) NOT NULL,
	UNIQUE KEY `email` (`email`)
);

CREATE TABLE `apps` (
	`title` varchar(128) NOT NULL,
	`url` varchar(128) NOT NULL,
	`batch` varchar(128) NOT NULL,
	UNIQUE KEY `url` (`url`)
);

insert into `bots`(email, password, url, type, batch) values
('some@yahoo.com',			'pass', 'http://profiles.friendster.com/1111', 'crawler', '1'),
('other@yahoo.com',			'pass', 'http://profiles.friendster.com/2222', 'crawler', '2'),

('email1', 'password', 'url', 'type', 'batch')
;

insert into `bots`(email, password, type, batch) values
('someinstaller@yahoo.com',		'pass', 'installer', '1'),

('otherinstaller@rocketmail.com',	'pass', 'installer', '2'),

('email2', 'password', 'type', 'batch')
;

insert into `apps`(title, url, batch) values
('day',		'http://127.0.0.1/ads.xml',	'1'),
('day',		'http://127.0.0.1/top.xml', 	'2')
;
