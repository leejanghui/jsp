drop table member;

create table member(
	id varchar(10) not null,
	password varchar(10) not null,
	name varchar(10) not null,
	gender varchar(4),
	birth varchar(12),
	mail varchar(30),
	phone varchar(14),
	address varchar(90),
	regist_day varchar(50),
	primary key(id)
)default CHARSET=utf8;





DROP table member;
select * from member;