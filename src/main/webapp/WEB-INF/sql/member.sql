create table member_tb(
member_id  varchar2(30)  primary key
,member_pw  varchar2(30)  not null
,member_nm  varchar2(30)  not null
,member_birth varchar2(10)  not null
,member_indate date    default sysdate
);