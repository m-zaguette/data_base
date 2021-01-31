
-- aula do dia 23/08 noturno

Comandos DML - Data Definition Language


--- COMANDOS DML

Insert into tb_paciente values (35,'Martha','02/02/1995','F','Rua das Flores, 40', 'S', 'Sorocaba');

Insert into tb_paciente values (31,'Marcos souza','02/05/1995','M','Rua das Flores, 40', 'Sorocaba', 'S');

Insert into tb_paciente values (10,'Pedro','12/30/2000','F','Rua das margaridas, 5', 'S', 'ITU');

select * from tb_paciente
select * from tb_medico

insert into tb_medico values (5, 'DR. Who');
insert into tb_medico values (6, 'Dr. House');

-- inserindo dados na tabela de consulta

insert into tb_consulta values (110,'08/14/2018', 'P',6,5, 1000.50);

insert into tb_consulta values (120,'08/14/2018', 'P',6,6, 1000.50);

select * from tb_consulta

select getdate()

select day(dataconsulta) from tb_consulta

=======
Fazer a lista de exercicios do blackboard 

1- Alterar a data de nascimento do paciente de código = 001 para  primeiro de setembro de 1980.

  Update tb_paciente
  set datanasc = '09/01/1980'
  where codpaciente = 1;

  select * from tb_paciente

2- Alterar o campo desconto de todos os pacientes para ´N´.


  Update tb_paciente
    set desconto = 'S'

  
3- Sobre a tabela Paciente, alterar o campo endereço para ‘Rua Melo Alves,40’ e
 cidade para ‘Itu” para o paciente de código = 02.


  Update tb_paciente
   set endereco = 'Rua Melo Alves,40',
       cidpaciente = 'Itu'
	where codpaciente = 02


4- Excluir a consulta  de código 002, somente se o campo valor consulta for igual a zero.

delete tb_consulta
where codconsulta=002 and valconsulta=0;

5- Excluir o paciente 005

delete from tb_paciente
where codpaciente =5;

6- Excluir todos os pacientes da cidade de Sorocaba de sexo feminino.

delete from tb_paciente 
where sexo = 'F' and cidpaciente = 'Sorocaba'

delete from tb_paciente
where cidpaciente = 'Sorocaba' and sexo = 'F';



7-Alterar o campo desconto de todos os pacientes de sexo feminino e  idade superior a 60 anos
 para ‘S’.

 select getdate()

 update tb_paciente
 set desconto = 'S'
 where datanasc <= '08/30/1958';


 update tb_paciente
 set desconto = 'S'
 where datanasc <= (getdate() - (60*365.25))


 select (getdate() - (60*365.25))


8- Criar um novo campo na tabela paciente para registrar o telefone do paciente. 
Este campo deverá ser varchar(15). Inserir o número de telefone dos pacientes neste novo campo.


alter table tb_paciente add telefone varchar(15)


Update tb_paciente
Set telefone = '99765-3387'
where codpaciente =1;



9- Renomeie a coluna cidpaciente da tabela paciente para CIDADE.

SP_rename 'tb_paciente.cidpaciente', cidade

10- Criar um novo campo na tabela médico e_mail varchar(30).

alter table tb_paciente add e_mail varchar(30)

11- Altere o campo e_mail criado aumentando para 40 posições.

alter table tb_paciente alter column telefone varchar(40)

12-Exclua agora este novo campo criado acima (você é muito indeciso.....).

alter table tb_paciente drop column e_mail

