create table employees (
ID int not null primary key,
name varchar(20) not null,
surname varchar(60) not null,
pesel bigint not null check (length(pesel)=11),
position_job varchar(70) not null,
department varchar(10) not null
);

create table customers (
ID int not null primary key,
name varchar(20) not null,
surname varchar(60) not null,
pesel bigint not null check (length(pesel)=11)
);

create table cars (
ID int not null primary key,
brand varchar(20) not null,
country varchar(20) not null,
KM int not null,
price_per_day int not null
);