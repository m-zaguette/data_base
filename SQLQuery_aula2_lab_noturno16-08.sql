-- aula do dia 16 de agosto noturno

Criando as tabelas do exercício feito na aula de teoria (apostila SQl página 7)

Create table TB_paciente
(  Codpaciente    int   Primary  Key,
   Nompaciente    varchar(30)   not null,
   Datanasc       datetime,
   Sexo           char( 1 ) check (sexo in ( 'F',  'M' )),
   Endereco       varchar(25) ) ;


   Create table TB_medico
   ( codmedico int primary key,
     nommedico varchar(40) not null);

   Create table  TB_consulta
(  Codconsulta       int     Primary Key ,
    Dataconsulta     datetime,
    Tipocons      char(01)   check  (tipocons in ('P','C')),
    Codpaciente   int    Not Null   References TB_paciente,                   
    Codmedico     int    Not Null   References TB_medico ,
    Valconsulta  decimal(5,2)    Not Null ) ;


	-- adicionando novas colunas na tabela paciente

ALTER TABLE  TB_paciente ADD   cidpaciente varchar(20) ;

ALTER TABLE  TB_Paciente  ADD desconto char( 1 ) check  (desconto in ('S','N' ) );

ALTER TABLE  TB_Paciente  ADD email varchar(40);

 -- alterando o tamanho de uma coluna

ALTER TABLE TB_consulta alter column valconsulta decimal(6,2);

-- excluindo uma coluna da tabela

Alter Table tb_paciente drop column email;


--- COMANDOS DML

Insert into tb_paciente values (30,'Maria Martha','02/02/1995','F','Rua das Flores, 40', 'Sorocaba', 'S');

Insert into tb_paciente values (31,'Marcos souza','02/05/1995','M','Rua das Flores, 40', 'Sorocaba', 'S');


select * from tb_paciente

-- inserir 5 linhas para cada tabela