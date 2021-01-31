Create Table TB_Paciente
(
	Codpaciente	int			Primary  Key,
	Nompaciente	varchar(30)	not null,
	Datanasc		datetime,
	Sexo 		char(1) check (sexo in ('F','M')),
	Endereco		varchar(25)
)

create table tb_medico
(
  codmedico int   Primary Key,
  nommedico varchar(30))

Create Table TB_Consulta
(
	Codconsulta	int	Primary Key ,
	Dataconsulta	datetime,
	Tipocons char(1) check(tipocons in ('P','C')),
	Codpaciente int Not Null References TB_Paciente,                   
	Codmedico 	int Not Null References TB_Medico ,
	Valconsulta 	decimal(5,0) Not Null
)
drop table tabconsulta
insert into Paciente
values (001, 'Joao da Silva','01-09-1957','M','Rua das Flores, 301',
	'Sorocaba','S');

insert into Paciente
values (002, 'Henrique Matias','25-01-1960','M','Av. das Margaridas, 112',
	'Sorocaba','S');

insert into Paciente
values (003, 'Clara das Neves','20-01-1978','F','Rua Manoel Bandeira, 1100',
	'Itu','S');

insert into Paciente
values (004, 'Joao Pessoa','15-10-1945','M','Rua Maria Machado, 800',
	'Salto','N');

insert into Paciente
values (005, 'Karla da Cruz','29-12-1939','F','Av. Brasil, 701',
	'Avare','S');

insert into Paciente