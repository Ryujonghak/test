DROP SEQUENCE SQ_USER;
CREATE SEQUENCE SQ_USER
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

DROP SEQUENCE SQ_ROLE;
CREATE SEQUENCE SQ_ROLE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

DROP SEQUENCE SQ_NOTICE;
CREATE SEQUENCE SQ_NOTICE
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

DROP SEQUENCE SQ_REVIEW;
CREATE SEQUENCE SQ_REVIEW
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

DROP SEQUENCE SQ_QNA;
CREATE SEQUENCE SQ_QNA
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

DROP SEQUENCE SQ_RESERV;
CREATE SEQUENCE SQ_RESERV
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

DROP SEQUENCE SQ_WISHLIST;
CREATE SEQUENCE SQ_WISHLIST
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

DROP TABLE TB_USER CASCADE CONSTRAINTS;
CREATE TABLE TB_USER
(
    ID          NUMBER NOT NULL PRIMARY KEY,
    USERNAME    VARCHAR2(255),
    EMAIL       VARCHAR2(255),
    PASSWORD    VARCHAR2(255),
    PHONE       VARCHAR2(255),
    YEAR        NUMBER,
    MONTH       NUMBER,
    DAY         NUMBER,
    NAME        VARCHAR2(255),
    ANSWER      VARCHAR2(50),
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(255),
    UPDATE_TIME VARCHAR2(255),
    DELETE_TIME VARCHAR2(255)
);

DROP TABLE TB_ROLE CASCADE CONSTRAINTS;
CREATE TABLE TB_ROLE
(
    RID         NUMBER NOT NULL PRIMARY KEY,
    NAME        VARCHAR2(255) UNIQUE,
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(255),
    UPDATE_TIME VARCHAR2(255),
    DELETE_TIME VARCHAR2(255)
);

DROP TABLE TB_QNA CASCADE CONSTRAINTS;
CREATE TABLE TB_QNA
(
--     QnA ID
    QID         NUMBER NOT NULL PRIMARY KEY,
--     QnA 작성자 ID
    QWRITER     VARCHAR2(255),
--     QnA 제목
    QTITLE      VARCHAR2(255),
--     QnA 내용
    QCONTENT    VARCHAR2(4000),
--     QnA 답변
    QANSWER     VARCHAR2(4000),
--     삭제플래그
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
--     작성일시
    INSERT_TIME VARCHAR2(255),
--     수정일시
    UPDATE_TIME VARCHAR2(255),
--     삭제일시
    DELETE_TIME VARCHAR2(255)
);

DROP TABLE TB_REVIEW CASCADE CONSTRAINTS;
CREATE TABLE TB_REVIEW
(
--     리뷰순번 ID
    RID          NUMBER NOT NULL PRIMARY KEY,
--     리뷰작성자 ID
    RWUSER       VARCHAR2(255),
--     예매고유번호
    RESERVNO     NUMBER,
--     영화코드
    MOVIECD      VARCHAR2(255),
--     영화제목
    MOVIENM      VARCHAR2(255),
--     유져평점
    RURATING     NUMBER,
--     유저평
    RUCONTENT    VARCHAR2(255),
--     상영시간
    SHOWTM       VARCHAR2(255),
--     개봉일
    OPENDT       VARCHAR2(255),
--     관람등급
    WATCHGRADENM VARCHAR2(255),
--     장르
    GENRENM      VARCHAR2(255),

--     관람일(에매날짜)
--     RUCONTENT   VARCHAR2(4000),

--     삭제플래그
    DELETE_YN    VARCHAR2(1) DEFAULT 'N',
--     작성일시
    INSERT_TIME  VARCHAR2(255),
--     수정일시
    UPDATE_TIME  VARCHAR2(255),
--     삭제일시
    DELETE_TIME  VARCHAR2(255)
);

DROP TABLE TB_WISHLIST CASCADE CONSTRAINTS;
CREATE TABLE TB_WISHLIST
(
    WID        NUMBER NOT NULL PRIMARY KEY,
    USERNAME   VARCHAR2(255),
    MOVIECD    VARCHAR2(255),
    MOVIENM    VARCHAR2(255),
    POSTERURLN VARCHAR2(255),
    RAITING    VARCHAR2(255),
    OPENDT     VARCHAR2(255)
);

DROP TABLE TB_NOTICE CASCADE CONSTRAINTS;
CREATE TABLE TB_NOTICE
(
--     공지사항번호
    NNO         NUMBER NOT NULL PRIMARY KEY,
--     공지사항말머리
    NTYPE       VARCHAR2(255),
--     공지사항제목
    NTITLE      VARCHAR2(255),
--     공지사항내용
    NCONTENT    VARCHAR2(4000),
--     삭제플래그
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
--     작성일시
    INSERT_TIME VARCHAR2(255),
--     수정일시
    UPDATE_TIME VARCHAR2(255),
--     삭제일시
    DELETE_TIME VARCHAR2(255)
);

DROP TABLE TB_SEAT CASCADE CONSTRAINTS;
CREATE TABLE TB_SEAT
(
    SEATPOSITION VARCHAR2(4) PRIMARY KEY,
    SEATYN       VARCHAR2(1) DEFAULT 'N'
);


DROP TABLE TB_SCHEDULE CASCADE CONSTRAINTS;
CREATE TABLE TB_SCHEDULE
(
    SCNO      NUMBER PRIMARY KEY,
    THEATERID NUMBER,
    MOVIECD   VARCHAR2(255),
    MOVIENM   VARCHAR2(255),
    STARTTIME DATE,
    ENDTIME   DATE
);


DROP TABLE TB_RESERVATION CASCADE CONSTRAINTS;
CREATE TABLE TB_RESERVATION
(
--     예매고유번호
    RESERVNO  NUMBER NOT NULL PRIMARY KEY,
--     로그인ID (참조테이블: TB_USER)
    USERNAME  VARCHAR2(1000),
--     예약자 이름
    NAME  VARCHAR2(1000),
--     상영스케쥴ID (참조테이블: TB_SCHEDULE)
    RNO       VARCHAR2(1000),
--     영화코드 (참조테이블: TB_SCHEDULE)
    MOVIECD   VARCHAR2(255),
--     영화제목 (참조테이블: TB_SCHEDULE)
    MOVIENM   VARCHAR2(255),
--     관람인원
    RCOUNT    VARCHAR2(255),
--     결제금액
    PRICE     VARCHAR2(255),
--     결제일시
    PAIDDATE  VARCHAR2(255),
    --     상영관
    LOCATION  VARCHAR2(255),
--     스케쥴 ID
    SCNO      NUMBER,
--     삭제플래그
    DELETE_YN VARCHAR2(1) DEFAULT 'N',
    --     작성일시
    INSERT_TIME  VARCHAR2(255),
--     수정일시
    UPDATE_TIME  VARCHAR2(255),
--     삭제일시
    DELETE_TIME  VARCHAR2(255)
);


COMMIT;