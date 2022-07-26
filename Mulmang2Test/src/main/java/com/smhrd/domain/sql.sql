CREATE TABLE board(
idx int not null auto_increment,
title varchar(100) not null,
writer varchar(100) not null,
content varchar(2000) not null,
indate datetime default now(),
count int default 0,

primary key(idx)
);

INSERT INTO board(title, writer, content)
values('스프링 게시판', '이민지', '즐거운 게시판 만들기');

delete from board;