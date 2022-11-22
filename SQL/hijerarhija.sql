#D:\Program Files\Tecaj\mysql\bin>\mysql -uroot --default_character_set=utf8 < D:\Repositories\Practice\SQL\hijerarhija.sql

drop database if exists hijerarhija;
create database hijerarhija default charset utf8;
use hijerarhija;

create table zaposlenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    placa decimal(18.2),
    nadredeni int
);

alter table zaposlenik add foreign key (nadredeni) references zaposlenik(sifra);
#1-6
insert into zaposlenik(sifra,ime,prezime,placa,nadredeni)
values
(null,'Tildy', 'Gerard',null,null ),
(null,'Annabell', 'Dugall',500,1 ),
(null,'Chilton', 'Rounsivall',500,1 ),
(null,'Regine', 'Dubock',500,3 ),
(null,'Karyl', 'Corriea',500,1 ),
(null,'Mathe', 'Nendick',500,2 );