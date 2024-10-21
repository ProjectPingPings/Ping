
create table users(
    userid  varchar2(50) primary key,
    password varchar2(100) not null,
    uname varchar2(50) null,
    utel varchar2(50) null,
    zipcode varchar2(50) null,
    uadr varchar2(100) null,
    uadrdetail varchar2(100) null,
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

insert into users(userid,password,uname,utel,zipcode,uadr,uadrdetail,uemail) 
values ('admin','admin','admin','010-1111-1111','04794','서울시 성동구 아차산로 113','2층 한국ICT인재개발원 성수센터','admin@ict.com');
insert into users(userid,password,uname,utel,zipcode,uadr,uadrdetail,uemail) 
values ('user','user','user','010-1111-2222','04794','서울시 성동구 아차산로 113','2층 한국ICT인재개발원 성수센터','user@ict.com');
insert into users(userid,password,uname,utel,zipcode,uadr,uadrdetail,uemail) 
values ('member','member','member','010-1111-3333','04794','서울시 성동구 아차산로 113','2층 한국ICT인재개발원 성수센터','member@ict.com');
insert into users(userid,password,uname,utel,zipcode,uadr,uadrdetail,uemail) 
values ('abc','abc','홍길동','010-1111-4444','04794','서울시 성동구 아차산로 113','2층 한국ICT인재개발원 성수센터','member@ict.com');


insert into authorities(userid,authority) values('user','ROLE_USER');
insert into authorities(userid,authority) values('member','ROLE_MANAGER');
insert into authorities(userid,authority) values('admin','ROLE_MANAGER');
insert into authorities(userid,authority) values('admin','ROLE_ADMIN');
insert into authorities(userid,authority) values('admin','ROLE_USER');


select * from authorities;


drop table authorities;
drop table users;
DROP SEQUENCE users_seq;