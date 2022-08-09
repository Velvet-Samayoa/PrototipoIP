create database bodegas;
use bodegas;

create table productos (
Id_pro int primary key,
nombrepro varchar(25),
detalle varchar(45),
cantidadpro int
);

create table ubicaciones(
Id_bod int primary key,
nombre_depto varchar(25),
Municipio varchar(25)
);

create table facturacion(
Id_fact int primary key,
nit_cliente varchar(12),
precio_uni float,
cantidad int,
precio_tot float
);

create table ventas(
Id_ventas int primary key,
id_factura int,
id_bol int
);

create table proveedor(
id_proveedor int not null,
id_producto int,
detalle varchar(15),
 precio int,
descuento int
);

create table usuarios(
id_usuario int primary key,
nombreUsu varchar(45),
apellidos varchar(45),
fecha_nac date,
sexo varchar(15)
);

create table usuariosadmin(
	id_usuarioadmin int primary key,
    usuario varchar(50),
    contraseña varchar(50),
    permisos varchar(50)
);


insert into usuariosadmin values (1, "usuariouno","12345","ninguno");
insert into usuariosadmin values (2, "usuariodos","987654","gestionar");
insert into usuariosadmin values (3, "usuariotres","holamundo","gestionar");

insert into ubicaciones values (15,"Guatemala","Guatemala");
insert into ubicaciones values (10,"Quetzaltenango","Coatepeque");
insert into ubicaciones values (20,"Escuintla","Palin");


insert into usuarios values (401,"Ester","Lopez","2001-05-09","Femenino");
insert into usuarios values (402,"Joshua","Barrios","2001-06-30","Masculino");
insert into usuarios values (403,"Velvet","Samayoa","2000-05-01","Femenino");
insert into usuarios values (404,"Ricardo","Miranda","2001-02-26","Masculino");
insert into usuarios values (405,"Paola","Reyes","2002-08-15","Femenino");

insert into productos values ("");
insert into productos values ("");
insert into productos values ("");
insert into productos values ("");


select * from ubicaciones;
select * from usuarios;
select * from usuariosadmin;
