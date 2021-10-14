create table employees (
ID int not null primary key,
name varchar(20) not null,
surname varchar(60) not null,
pesel bigint not null check(length(pesel)=11),
position_job varchar(70) not null,
department varchar(10) not null
);

create table customers (
ID int not null primary key,
name varchar(20) not null,
surname varchar(60) not null,
pesel bigint not null check(length(pesel)=11)
);

create table cars (
ID int not null primary key,
brand varchar(20) not null,
country varchar(20) not null,
KM int not null,
price_per_day int not null
);

/* INSERTING EMPLOYEES TO THE TABLE */

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (1,'Jakub','Zieliński',87070883117,'Senior Specialist','Poznań');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (2,'Adam','Konieczny',90010773463,'Regular Specialist','Gdańsk');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (3,'Izabella','Kaźmierczak',91070457388,'Manager','Gdańsk');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (4,'Klaudia','Kucharska',88101294647,'Junior Specialist','Warszawa');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (5,'Hubert','Janicki',88091909299,'Senior Specialist','Warszawa');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (6,'Sonia','Brzezińska',92100517799,'Junior Specialist','Poznań');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (7,'Daniela','Kozioł',98051994814,'Regular Specialist','Poznań');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (8,'Mirosław','Przybylski',99302776263,'Junior Specialist','Warszawa');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (9,'Julita','Wierzbicka',76062160677,'Senior Specialist','Poznań');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (10,'Olaf','Domański',91100470178,'Junior Specialist','Gdańsk');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (11,'Roksana','Miazga',90050156465,'Regular Specialist','Poznań');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (12,'Remigiusz','Sadowski',75112477858,'Manager','Warszawa');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (13,'Tymon','Kurowski',80090474035,'Manager','Poznań');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (14,'Aneta','Nowak',74122507047,'Senior Specialist','Poznań');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (15,'Błażej','Nowak',81121905437,'Regular Specialist','Gdańsk');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (16,'Klaudiusz','Kaczmarczyk',82050788699,'Senior Specialist','Gdańsk');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (17,'Blanka','Mazurkiewicz',79020113544,'Regular Specialist','Warszawa');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (18,'Feliks','Gajda',94102371733,'Junior Specialist','Warszawa');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (19,'Emil','Kurowski',99020933396,'Regular Specialist','Gdańsk');

INSERT INTO employees (ID, name, surname, pesel, position_job, department)
VALUES (20,'Rozalia','Jasińska',72090207024,'Senior Specialist','Gdańsk');

/* TABLE MODIFICATION */

ALTER TABLE customers
ADD phone varchar(12) not null;

ALTER TABLE customers
ADD city varchar(30) not null;

ALTER TABLE customers
MODIFY phone varchar(12) not null check(left(phone, 1) = "+");

ALTER TABLE customers
MODIFY pesel bigint not null check(length(pesel) = 11);

ALTER TABLE customers
ADD CONSTRAINT CHK_phone check(phone REGEXP '[+][0-9]{11}');