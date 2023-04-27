create table member(
	id varchar(20) primary key,
	pw varchar(300) not null,
	name varchar(50) not null,
	email varchar(100),
	tel varchar(13),
	addr varchar(200),
	point int default 0,
	regdate date default current_date
);

create table board(
	bid serial primary key,
	title varchar(200) not null,
	content varchar(1000),
	author varchar(20),
	resdate date default current_date,
	constraint b_fk FOREIGN KEY (author) REFERENCES member(id)
);

-- 샘플 데이터 입력
insert into member values('admin','1234','관리자','admin@company.com','010-1234-1234','고양시 덕양구',default,default);

insert into board values(default,'더미글 제목1','첫 번째 더미글에 대한 내용입니다.','admin',default);

select * from member;
select * from board;
