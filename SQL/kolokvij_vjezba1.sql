# mysql -uroot < D:\Repositories\EdunovaPP26\SQL\kolokvij_vjezba1.sql

drop database if exists kolokvij;
create database kolokvij;
use kolokvij;

#0

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

create table sestra(
    sifra int not null primary key auto_increment,
    introvertno boolean,
    haljina varchar(31) not null,
    maraka decimal(16,6),
    hlace varchar(46) not null,
    narukvica int not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31),
    jmbag char(11),
    bojaociju varchar(39),
    haljina varchar(44),
    sestra int
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table mladic(
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno boolean,
    ekstrovertno boolean not null,
    dukserica varchar(48) not null,
    muskarac int
);

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal(16,5) not null,
    gustoca decimal(18,6) not null,
    lipa decimal(13,10),
    ogrlica int  not null,
    bojakose varchar(38),
    suknja varchar(36),
    punac int
);

alter table sestra_svekar add foreign key (svekar) references svekar(sifra);
alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table zena add foreign key (sestra) references sestra(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table mladic add foreign key (muskarac) references muskarac(sifra);

alter table cura add foreign key (punac) references punac(sifra);

#1

insert into muskarac(bojaociju,hlace,modelnaocala,maraka,zena)
values
('crna','duge','rayban',1,1),
('bijela','kratke','nike',10,2),
('crna','rifle','rayban',101,3);

insert into zena(kratkamajica, jmbag,bojaociju,sestra)
values
('jakokratka',12345678910,'smeda',1),
('duga',12345678911,'plava',2),
('kratka',12345678912,'roza',3);

insert into sestra_svekar(sestra,svekar)
values
(1,2),
(2,3),
(3,6);

#2

update cura set gustoca=15.77;

#3

delete from mladic where kuna > 15.78;

#4

select kratkamajica from zena where hlace like '%ana%';

#5

select svekar.dukserica, mladic.asocijalno, muskarac.hlace from muskarac 
inner join zena on zena.sifra=muskarac.zena
inner join sestra on sestra.sifra=zena.sestra 
inner join sestra_svekar on sestra.sifra=sestra_svekar.sestra
inner join svekar on svekar.sifra=sestra_svekar.svekar
inner join mladic on mladic.muskarac=muskarac.sifra
where zena.hlace like 'a%' and sestra.haljina like '%ba%' 
order by muskarac.hlace desc;

#6 43 min

select haljina, maraka from sestra
left join sestra_svekar on sestra.sifra=sestra_svekar.sestra;

