use myblog;
show tables;

select * from users;
select * from blogs;

insert into users (username, `password`, realname) values ('gaogao', '1234', '高高');

insert into blogs (title, content, createtime, author) values ('标题C', '内容C', 1560848874536, '欢欢');

ALTER USER 'root'@'localhost' IDENTIFIED BY 'mysql_2019' PASSWORD EXPIRE NEVER;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'mysql_2019'; 

FLUSH PRIVILEGES;

SHOW CREATE TABLE users;

-- 创建node后端项目涉及到的两张表

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `createtime` bigint(20) NOT NULL DEFAULT '0',
  `author` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `realname` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
