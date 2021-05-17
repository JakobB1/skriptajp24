drop database if exists skriptajp24;
create database skriptajp24;
use skriptajp24;

create table smjer(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int not null,
    cijena decimal(18,2) null, # ako ne postoji not null onda se smatra da je null
    certifikat boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    smjer int not null,
    predavac int,
    datumpocetka datetime
);

create table clan(
    grupa int not null,
    polaznik int not null
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(32)
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojugovora varchar(20)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(100)
);


alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);



select * from smjer;

insert into smjer (naziv,trajanje)
values ('Java programiranje',130);


insert into smjer(sifra,naziv,trajanje,cijena,certifikat)
values (null,'PHP programiranje',130,5999.99,false);




select * from osoba;

insert into osoba (ime,prezime,email) values
('Marko','Markovic','marko@gmail.com'),
('Shaquille','O''Neal','shaki@gmail.com'),
('Ivo','Ivic','ivo@gmail.com'),
('Stjepan','Stjepovic','stjepan@gmail.com'),
('Josip','Josipic','josip@gmail.com'),
('Tea','Teic','tea@gmail.com'),
('Luka','Lukovic','luka@gmail.com'),
('Iva','Ivic','iva@gmail.com'),
('Mara','Maric','mara@gmail.com'),
('Josip','Josipovic','josip@gmail.com'),
('Petar','Peric','petar@gmail.com'),
('Zoran','Zoric','zoran@gmail.com'),
('Igor','Igoric','igor@gmail.com'),
('Vedran','Vedric','vedran@gmail.com'),
('Mara','Maric','mara@gmail.com');