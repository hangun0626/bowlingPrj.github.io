--scoremanage 테이블 생성
create table scoremanage(
 scoremanage_no number(38) primary key --게시물 번호
 ,scoremanage_name varchar2(100) not null --작성자
 ,scoremanage_title varchar2(200) not null --제목
 ,scoremanage_pwd varchar2(20) not null --비번
 ,scoremanage_cont varchar2(4000) not null --내용
 ,scoremanage_hit number(38) default 0--조회수
 ,scoremanage_ref number(38) --원본글과 답변글을 묶어주는 그룹번호역할
 ,scoremanage_step number(38) --원본글이면 0,첫번째 답변글 1. 원본글과
 --답변글을 구분하는 번호값,몇번째 답변글인가를 구분하는 번호값
 ,scoremanage_level number(38) --답변글 정렬 순서
 ,scoremanage_date date --등록날짜
);

select * from scoremanage order by scoremanage_no desc;

--scoremanage_no_seq 시퀀스 생성
create sequence scoremanage_no_seq
start with 1 --1부터 시작
increment by 1 --1씩 증가옵션
nocache;

drop sequence scoremanage_no_seq;

select scoremanage_no_seq.nextval from dual;




























