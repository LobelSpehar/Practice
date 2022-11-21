drop database if exists vjezba1;
create database vjezba1;
use vjezba1;

create table route(
    id int primary key auto_increment,
    name varchar(20),
    grade varchar(6),
    setter int
);

create table hold(
    id int primary key auto_increment,
    type varchar(20),
    posX decimal(3,2),
    posY decimal(3,2)
);

create table route_hold(
    route int,
    hold int,
    role varchar(5)
);

create table user(
    id int primary key auto_increment,
    nickname varchar(20),
    email varchar(50),
    password varchar(50)
);

create table routesclimbed(
    user int,
    route int
);

alter table route_hold add foreign key (route) references route(id);
alter table route_hold add foreign key (hold) references hold(id);

alter table route add foreign key (setter) references user(id);

alter table routesClimbed add foreign key (user) references user(id);
alter table routesClimbed add foreign key (route) references route(id);