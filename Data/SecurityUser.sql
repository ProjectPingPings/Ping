
create table users(
    username varchar2(50) not null,
    userid  varchar2(50) primary key,
    password varchar2(100) not null,
    utel varchar2(100) null,
    uadd varchar2(100) null,
    uemail varchar2(100) null,
    enabled char(1) default '1' 
);

desc users;

create table authorities(
     userid varchar2(50) not null,
     authority varchar2(50) not null,
     constraint fk_authorities_users foreign key(userid) references users(userid)
);

commit;

select * from users;

insert into users(userid,password) values ('admin','admin');
insert into users(userid,password) values ('user','user');
insert into users(userid,password) values ('member','member');

insert into authorities(userid,authority) values('user','ROLE_USER');
insert into authorities(userid,authority) values('member','ROLE_MANAGER');
insert into authorities(userid,authority) values('admin','ROLE_MANAGER');
insert into authorities(userid,authority) values('admin','ROLE_ADMIN');
insert into authorities(userid,authority) values('admin','ROLE_USER');
insert into authorities(userid,authority) values('1234','ROLE_USER');


insert into users(username,userid,password,utel,uadd,uemail) 
values ('admin','admin','admin','010-1111-1111','서울시 성동구 아차산로 113','admin@ict.com');

insert into users(username,userid,password,utel,uadd,uemail) 
values ('user','user','user','010-1111-2222','서울시 성동구 아차산로 115','user@ict.com');

insert into users(username,userid,password,utel,uadd,uemail) 
values ('member','member','member','010-1111-3333','서울시 성동구 아차산로 117','member@ict.com');

insert into users(username,userid,password,utel,uadd,uemail) 
values ('abc','abc','abc','010-1111-4444','서울시 성동구 아차산로 117','member@ict.com');

insert into users(username,userid,password,utel,uadd,uemail) 
values ('1234','1234','1234','010-1111-2222','서울시 성동구 아차산로 115','user@ict.com');


select * from authorities;


drop table authorities;
drop table users;
DROP SEQUENCE users_seq;