--- Aula do dia 22-agosto -

Create table tb_paciente2
(  Codpaciente    int   Primary  Key,
   Nompaciente    varchar(30)   not null,
   Datanasc       datetime,
   Sexo           char( 1 ) check (sexo in ( 'F',  'M' )),
   Endereco       varchar(25) ) ;

   create table tb_medico2
   (codmedico int primary key,
    nommedico varchar(30));

	Create table  Tb_consulta2
(  Codconsulta       int     Primary Key ,
    Dataconsulta     datetime,
    Tipocons      char(01)   check  (tipocons in ('P','C')),
    Codpaciente   int    Not Null   References tb_paciente,                   
    Codmedico     int    Not Null   References tb_medico ,
    Valconsulta  decimal(5,2)    Not Null ) ;

-- alterando as tabelas já criadas - incluir novos atributos

Modificando tamanho de uma coluna já existente:

ALTER TABLE  tb_Paciente alter column cidpaciente varchar(30);

Excluindo uma coluna:

ALTER TABLE  tb_Paciente Drop column cidpaciente;

ALTER TABLE  tb_Paciente  ADD desconto char( 1 ) check  (desconto in ('S','N' ) );

-- Adicionando restrições de consistência:

ALTER TABLE  tb_Paciente ADD  Check  (sexo in ('F', 'M' ) ) ;  


-- Modificando tamanho de uma coluna já existente:

ALTER TABLE  tb_Paciente alter column cidpaciente varchar(30);

-- Excluindo uma coluna:

ALTER TABLE  tb_Paciente Drop column cidpaciente;

-- excluindo tabelas

drop table tb_paciente;

-- criar novamente a coluna cidade

Alter table Tb_paciente add Cidpaciente varchar(20);

-- Comandos DML - manipulação de dados


Insert into tb_paciente values (51,'Maria ','05/30/1995','F','Rua Primavera,30','S','Sorocaba');

select * from tb_paciente;

select codpaciente,nompaciente from tb_paciente;

insert into tb_medico values (10, 'Dr. Z');

insert into tb_consulta values (100,'08/22/2018', 'P',51, 10,200.00);

insert into tb_consulta values (101,'08/22/2018', 'P',96, 10,200.00); -- dá erro pois 96 não é um paciente existente na tab Paciente.


-- para casa
inserir mais 5 registro pra acada tabela
