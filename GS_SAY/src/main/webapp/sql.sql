drop table memberlist cascade constraint;
drop table maininfo cascade constraint;
drop table category cascade constraint;
drop table myscrap cascade constraint;
drop table endinfo cascade constraint;

select * from memberlist;
select * from myscrap;
select * from category;
select * from maininfo;
select * from endinfo;

create table memberlist (
member_id varchar2(50),
member_pw varchar2(15) not null,
member_name varchar2(15) not null,
member_tel varchar2(15) not null,
constraint memberlist_id_pk primary key(member_id));

create table category(
code number(10),
cate_name varchar2(50) not null,
constraint category_code_pk primary key(code));

create table maininfo (
info_num number(10),
info_name varchar2(150) not null,
start_day date,
end_day date,
code number(10) not null,
info_link varchar2(500) not null,
constraint maininfo_info_num_pk primary key(info_num),
constraint maininfo_code_fk foreign key (code) references category(code));


create table myscrap (
scrap_num number(10),
member_id varchar2(50),
info_num number(20),
end_day date,
info_name varchar2(150) not null,
info_link varchar2(500) not null,
constraint myscrap_scrap_num_pk primary key (scrap_num),
constraint myscrap_member_id_fk foreign key (member_id) references memberlist(member_id),
constraint myscrap_info_num_fk foreign key (info_num) references maininfo(info_num));

create table endinfo(
endinfo_num number(10),
info_num number(10),
info_name varchar2(150) not null,
start_day date,
end_day date,
code number(10) not null,
info_link varchar2(500) not null,
constraint endinfo_endinfo_num_pk primary key (endinfo_num),
constraint endinfo_info_num_fk foreign key (info_num) references maininfo(info_num));

create sequence info_num
start with 1 increment by 1

create sequence scrap_num
start with 1 increment by 1

create sequence endinfo_num
start with 1 increment by 1