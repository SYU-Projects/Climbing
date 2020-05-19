CREATE database if not exists climbing
default character set utf8 collate utf8_general_ci;

USE climbing;

/*Use data table*/
create table if not exists User(
	id int unsigned auto_increment primary key,
	username varchar(32) unique key,
	password varchar(32),
	email varchar(32),
	birth varchar(6),
	gender int unsigned,
	score int unsigned,
	create_date timestamp default current_timestamp
);

/*Posted mountain list table*/
create table if not exists MountainPost(
	id int unsigned auto_increment primary key,
	user_id int unsigned,
	title varchar(32),
	body varchar(4096),
	img_path varchar(32),
	star int unsigned,
	create_date timestamp default current_timestamp,
	foreign key (user_id) references User(id)
);

/*Mountain list recorded by user table*/
create table if not exists MyList(
	id int unsigned auto_increment primary key,
	m_name varchar(32),
	course varchar(32),
	takedtime varchar(6),
	create_date timestamp default current_timestamp,
	score int unsigned
);

/*Mountain data what we crawling table*/
create table if not exists MountainList(
	id int unsigned auto_increment primary key,
	name varchar(32),
	avg_time varchar(6)
);

