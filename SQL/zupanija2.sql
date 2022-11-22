# D:\Program Files\Tecaj\mysql\bin>\mysql -uroot --default_character_set=utf8 < D:\Repositories\Practice\SQL\zupanija2.sql

drop database if exists zupanija2;
create database zupanija2;
use zupanija2;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null, 
    zupan int not null
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null, 
    naziv varchar(50) not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(50) not null
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);
#1-3
insert into zupan(sifra, ime, prezime)
values
(null, 'Damir','Dekanić'),
(null, 'Ivan','Anušić'),
(null, 'Stjepan','Kožić');
#1-3
insert into zupanija(sifra, naziv,zupan)
values
(null,'Vukovarsko-srijemska',1),
(null,'Osječko-baranjska',2),
(null,'Zagrebačka',3);

insert into opcina(sifra, zupanija,naziv)
values
(null,1,'Borovo'),
(null,2,'Čepin'),
(null,3,'Dubrava');

insert into mjesto(sifra,opcina,naziv)
values
(null,3,'Stara Kapela'),
(null,2,'Livana '),
(null,1,'Borovo naselje');