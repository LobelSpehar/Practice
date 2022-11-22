#D:\Program Files\Tecaj\mysql\bin>\mysql -uroot --default_character_set=utf8 < D:\Repositories\Practice\SQL\firma.sql

drop database if exists firma;
create database firma default charset utf8;
use firma;

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2)
);

create table sudjeluje(
    projekt int not null,
    programer int not null, 
    datumpocetka datetime not null,
    datumkraja datetime
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datumrodenja datetime,
    placa decimal(18,2) not null
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);
#1-10
insert into programer (sifra, ime, prezime, datumrodenja, placa) 
values 
(null, 'Glynn', 'Lembke', '2000-10-26', 35),
(null, 'Gabriell', 'Egdell', '1999-08-21', 9),
(null, 'Ara', 'Fletcher', '2000-06-24', 87),
(null, 'Skippy', 'Clinning', '1999-01-15', 74),
(null, 'Madeleine', 'Hazelgreave', '2000-05-24', 71),
(null, 'Karoline', 'Jankin', '2000-05-25', 42),
(null, 'Moore', 'Stouther', '1999-02-19', 27),
(null, 'Emalee', 'Conningham', '2001-10-08', 27),
(null, 'Peta', 'Petrushanko', null, 14),
(null, 'Douglas', 'Peperell', '2000-08-15', 8);
#1-5
insert into projekt (sifra,naziv,cijena)
values
(null,'Projekt-x',null),
(null,'Projekt-y',253),
(null,'Projekt-z',null),
(null,'Projekt-a',134),
(null,'Projekt-b',523);
#1-7
insert into sudjeluje(projekt,programer,datumpocetka,datumkraja)
values
(1,5,'2015-05-07','2016-06-19'),
(2,5,'2018-04-19','2022-05-14'),
(1,2,'2012-03-17',null),
(3,1,'2016-04-26','2017-05-01'),
(4,1,'2017-04-05','2018-05-09'),
(4,2,'2013-04-15','2019-05-29'),
(4,3,'2009-04-20',null);
