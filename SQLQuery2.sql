create database BD_EdmerFCO

use BD_EdmerFCO

create table fabricante
(
codigo int(10) primary key not null,
nombre varchar(100)
);

create table productos 
(
codigo int(10) primary key not null,
nombre varchar(100) not null,
Precio decimal not null,
Codigo_feabricante int foreign key references fabricante(codigo)
);

insert into dbo.fabricante (codigo, nombre) values (1,'Asus');
insert into dbo.fabricante (codigo, nombre) values (2,'Lenovo');
insert into dbo.fabricante (codigo, nombre) values (3,'Helwtt-Packard');
insert into dbo.fabricante (codigo, nombre) values (4,'Samsumg');
insert into dbo.fabricante (codigo, nombre) values (5,'Segate');
insert into dbo.fabricante (codigo, nombre) values (6,'Crucial');
insert into dbo.fabricante (codigo, nombre) values (7,'Gigabyte');
insert into dbo.fabricante (codigo, nombre) values (8,'Huawei');
insert into dbo.fabricante (codigo, nombre) values (9,'Xiaomi');

insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (1,'Disco duro SATA3 1TB', 86.99, 5)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (2,'Memoria RAM DDR4 8GB', 120, 6)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (3, 'Disco SSD 1 TB', 150.99, 4)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (4,'GeForce GTX 1050TI', 755, 6)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (5,'GeForce GTX 1080 Xtreme', 755, 6)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (6,'Monitor 24 LED Full HD', 202, 1)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (7,'Monitor 27 LED Full HD', 245.99, 1)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (8,'Portatil Yoga 520', 599, 2)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (9,'Portatil ideapd 320', 444, 2)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (10,'Impresora HP Deskjet 3720', 59.99, 3)
insert into dbo.productos (codigo, nombre, precio,Codigo_feabricante) values (11,'Impresora HP Laserjrt Pro M26nw', 59.99, 3)


select * from fabricante

select * from productos

select * from productos 
where Precio <= 120

select SUM(precio) as PrecioTOTAL from  productos

select fra.nombre, COUNT(produ.Codigo_feabricante) from productos as produ
inner join fabricante fra 
on produ.Codigo_feabricante = fra.codigo
group by fra.nombre, produ.Codigo_feabricante
having COUNT(produ.Codigo_feabricante) >=2 

select fra.nombre from productos as produ
inner join fabricante fra 
on produ.Codigo_feabricante = fra.codigo
where produ.Codigo_feabricante = fra.codigo


create procedure