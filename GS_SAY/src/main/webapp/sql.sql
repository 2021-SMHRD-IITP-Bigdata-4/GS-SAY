drop table memberlist;

create table memberlist (
member_id varchar2(15),
member_pw varchar2(15) not null,
member_name varchar2(10) not null,
member_tel varchar2(15) not null,
constraint memberlist_id_pk primary key(member_id));

select * from memberlist;