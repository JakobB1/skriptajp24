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