# mysql -uroot --default_character_set=utf8 < 

show tables;

select * from autor;
select * from izdavac;
select * from katalog;
select * from mjesto;

select ime from autor;

select ime,prezime from autor;

select count(ime) from autor;

select count(distinct ime) from autor;

select  ime,prezime from autor where prezime like ('%da%') order by ime limit 10;

select * from autor where ime like ('%da%') and prezime like ('%ne%') order by prezime limit 10;

select * from autor where ime not like ('%a%') and ime not like ('%u%');

select * from katalog where naslov not like ('%1%') order by naslov desc limit 10;

select min(sifra) as minimum from katalog;

select max(ime) as ime from autor;

select count(*) from autor where ime like '%da%';

select avg(postanskiBroj) from mjesto;

select sum(sifra) from autor where ime not like '%a';

select ime from autor where ime like 'a%a' order by ime limit 10;

select ime from autor where ime like 'a%a' order by ime limit 10;

select count(ime) from autor where not ime like '%a%' and prezime like '%a%';

select * from katalog order by izdavac,naslov desc;

select naslov from katalog where izdavac between 500 and 515 order by naslov;

delete from katalog;

select ime from autor where ime like '_a_a';

select prezime from autor where prezime like '_a_b%'

select count(ime) from autor where ime in('kata','fata');

select * from katalog group by autor order by count(autor) desc;

select ime,prezime from autor where sifra=0;

insert into autor(sifra,ime,prezime,datumrodenja)
values
(0, 'Lobel','Spehar','1992-04-15');

delete from autor where sifra=0;

select * from autor where datumrodenja between '1992-01-01' and '1992-12-31' order by datumrodenja;

select * from autor where datumrodenja like '%-04-15%' order by datumrodenja;

update autor set ime ='nemaimena' where sifra=0;
update autor set ime ='Lobel' where sifra=0;

select concat(first_name," ",last_name) as fullname from patients order by first_name;

select distinct year(birth_date) from patients order by birth_date asc;