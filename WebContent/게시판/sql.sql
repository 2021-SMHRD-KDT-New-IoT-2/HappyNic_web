 CREATE TABLE Member_Board (
  board_num NUMBER NOT NULL,
  board_id VARCHAR2(50),
  board_subject VARCHAR2(100),
  board_content VARCHAR2(2000),
  board_file VARCHAR2(100),
  Board_re_ref NUMBER,
  Board_re_lev NUMBER,
  Board_re_seq NUMBER,
  Board_date DATE,
  CONSTRAINT PK_Member_Board PRIMARY KEY(board_num)
);
 
select * from all_all_tables

DROP TABLE Board_count NUMBER;
select * from cols --전체 컬럼조회
-- board_num : 게시물 글번호
-- board_id : 글작성자 ID
-- board_subject : 글 제목
-- board_content : 글 내용
-- board_file : 첨부파일 이름
-- Board_re_ref : 글 그룹번호
-- Board_re_lev : 답변글 깊이
-- Board_re_seq : 답변글 순서
-- Board_count : 글 조회수
-- Board_date 작성날짜
 create table bbs(
	bbsID int,
	bbsTitle varchar(50),
	userID varchar(20),
	bbsDate datetime,
	bbsContent varchar(2048),
	bbsAvailable int,
	primary key(bbsID)
);
 
SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

     SELECT * FROM all_all_tables
     SELECT * FROM tabs


create table USER(
	userID varchar(20),
	userPassword varchar(20),
	userName varchar(20),
	userGender varchar(20),
	userEmail varchar(50),
	primary key(userID)
);
     SELECT * FROM USER_TAB_COMMENTS

SELECT * FROM USER_TAB_COLUMNS

출처: https://jwklife.tistory.com/45 [인 생]

출처: https://jwklife.tistory.com/45 [인 생]
-- 게시판 시퀀스
select * from andChat
create sequence BOARD_NUM; 
-- 제약조건 추가
 
alter table MEMBER_BOARD
add constraint pk_board_id foreign key(board_id)
REFERENCES JSP_MEMBER(id);

INSERT INTO USER VALUES (1,1,1,1,1)
select * from user