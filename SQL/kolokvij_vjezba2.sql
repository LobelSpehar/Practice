# mysql -uroot < D:\Repositories\practice\SQL\kolokvij_vjezba2.sql

#0

drop database if exists kolokvij;
create database kolokvij;
use kolokvij;

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47),
    ogrlica int not null,
    asocijalno boolean not null,
    neprijatelj int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43) not null,
    lipa decimal(16,8),
    modelnaocala varchar(49) not null,
    kuna decimal(12,6) not null,
    jmbag char(11),
    cura int
);

create table cura(
    sifra int not null primary key auto_increment,
    haljina varchar(33) not null,
    drugiputa datetime not null,
    suknja varchar(38),
    narukvica int,
    introvertno boolean,
    majica varchar(40) not null,
    decko int
);

create table decko(
    sifra int not null primary key auto_increment,
    indiferentno int,
    vesta varchar(34),
    asocijalno boolean not null
);

create table decko_zarucnica(
    sifra int not null primary key auto_increment,
    decko int not null,
    zarucnica int not null
);

create table zarucnica(
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakose varchar(37) not null,
    novcica decimal(15,9),
    lipa decimal(15.8) not null,
    indiferentno boolean
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    modelnaocala varchar(37),
    treciputa datetime not null,
    ekstrovertno boolean not null,
    prviputa datetime,
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    stilfrizura varchar(48),
    ogrlica int not null,
    asocijalno boolean not null
);

alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);

alter table neprijatelj add foreign key (cura) references cura(sifra);

alter table cura add foreign key (decko) references decko(sifra);

alter table decko_zarucnica add foreign key (decko) references decko(sifra);

alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);

alter table prijatelj add foreign key (svekar) references svekar(sifra);



#1

insert into cura(haljina,drugiputa,majica)
values
('duga','2020-04-04','plava'),
('kratka','2020-04-05','bijela'),
('plava','2020-04-06','kratka');

insert into decko_zarucnica(decko,zarucnica)
values
(1,2),
(3,5),
(12,21);

insert into neprijatelj(haljina,modelnaocala,kuna)
values
('kratka haljina','puma',120.02),
('duga haljina','nike',160.02),
('bijela haljina','adidas',180.02);

#2

update prijatelj set treciputa='2020-04-30';

#3

delete from brat where ogrlica !=14;

#4

select suknja from cura where drugiputa is null;

#5

select zarucnica.novcica,brat.neprijatelj, neprijatelj.haljina from neprijatelj
inner join cura on neprijatelj.cura=cura.sifra 
inner join decko on cura.decko=decko.sifra 
inner join decko_zarucnica on decko.sifra=decko_zarucnica.decko 
inner join zarucnica on decko_zarucnica.zarucnica=zarucnica.sifra 
inner join brat on neprijatelj.sifra=brat.neprijatelj 
where cura.drugiputa is not null and decko.vesta like '%ba%' 
order by neprijatelj.haljina desc;

#6 26.28.54

select vesta, asocijalno from decko 
left join decko_zarucnica on decko_zarucnica.decko=decko.sifra where decko_zarucnica.decko is null;