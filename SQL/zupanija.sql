drop database if exists zupanija;
create database zupanija;
use zupanija;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);