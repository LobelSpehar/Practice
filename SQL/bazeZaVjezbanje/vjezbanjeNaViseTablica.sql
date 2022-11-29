# BAZA KNJIŽNICA

# Izlistajte sve naslove kojima je 
# autor August Šenoa

select naslov from katalog a
inner join autor b on a.autor=b.sifra 
where b.ime='August' and b.prezime='Šenoa';

# nastavno na prethdni zadatak
# dodajte u kojem mjestu su izdane knjige

select a.naslov,c.naziv as mjesto from katalog a
inner join autor b on a.autor=b.sifra 
inner join mjesto c on a.mjesto=c.sifra
where b.ime='August' and b.prezime='Šenoa';


# nastavno na prethdni zadatak
# dodajte koj izdavač je izdao te knjige

select a.naslov,c.naziv as mjesto,d.naziv as izdavac from katalog a
inner join autor b on a.autor=b.sifra 
inner join mjesto c on a.mjesto=c.sifra
inner join izdavac d on a.izdavac=d.sifra 
where b.ime='August' and b.prezime='Šenoa';


# BAZA SAKILA

# U kojim je sve filmovima glumio 
# BURT	POSEY

select a.title,concat(c.first_name,' ' ,c.last_name) as actor from film a
inner join film_actor b on a.film_id=b.film_id 
inner join actor c on b.actor_id=c.actor_id 
where c.first_name='Burt' and c.last_name='Posey';


# Ispišite imena i prezimena kupaca
# koji su posuđivali filmove
# u kojima je glumio 
# BURT	POSEY

select concat(f.first_name,' ',f.last_name) as customer,count(f.first_name) 'films rented'
from film a
inner join film_actor b on a.film_id=b.film_id 
inner join actor c on b.actor_id=c.actor_id 
inner join inventory d on a.film_id=d.film_id 
inner join rental e on d.inventory_id=e.inventory_id 
inner join customer f on e.customer_id=f.customer_id 
where c.first_name='Burt' and c.last_name='Posey'
group by f.first_name,f.last_name 
order by f.first_name,f.first_name;
