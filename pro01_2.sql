select * from member;

-- 로그인
select * from member where id='admin' and pw='1234';

-- 본인 정보(마이페이지)
select * from member where id='admin';

-- 중복 아이디 확인
select * from member where id='admin';

-- 회원 가입
insert into member values ('kkt','2424','김기영','010-2424-2424','kky@naver.com','고양시 덕양구',default,default)

-- 회원 정보 수정
update member set pw='7979', name='김기태', tel='010-1004-1004', email='kkt@naver.com', addr='고양시 일산동구' where id='kkt';

-- 회원 삭제
delete from member where id='kkt';


select * from board;

-- 게시판 목록 불러오기
select board.bid as bid, board.title as title, board.content as content, member.name as name, board.resdate as resdate from board, member where board.author=member.id;
select a.bid as bid, a.title as title, a.content as content, b.name as name, a.resdate as resdate from board a inner join member b on a.author=b.id;
select bid, title, content, (select name from member where id=board.author) as name, resdate from board;
select bid, title, content, resdate, name from (select * from member, board where author=id) as data;
select bid, title, content, resdate, member.name from board, member where author in (select id from member);

select board.bid as bid, board.title as title, board.content as content, member.name as name, board.resdate as resdate, board.author as author from board, member where board.author=member.id order by board.bid desc;


-- 게시판 상세 보기
select board.bid as bid, board.title as title, board.content as content, member.name as name, board.resdate as resdate, board.author as author from board, member where board.author=member.id and board.bid=1;

-- 게시판 글 추가 하기
insert into board values (default,'더미 테스트 글2','여기는 더미 테스트 글2의 내용부입니다.','kkt',default);

-- 게시글 수정하기
update board set title='더미 테스트2 제목 수정', content='여기는 더미 테스트2 수정글입니다.', author='kkt' where bid=2;

-- 게시글 삭제하기
delete from board where bid=2;

-- 관리자 회원 목록


