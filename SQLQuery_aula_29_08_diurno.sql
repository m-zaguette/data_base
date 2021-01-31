-- aula do dia 29 de agosto - Diurno

Comandos insert, update e delete

Lista de exrcicio DML -02

1- Alterar a data de nascimento do paciente de código = 001 para  primeiro de setembro de 1980.

Update TB_paciente
set datanasc = '09/01/1980'
where codpaciente =1;

2- Alterar o campo desconto de todos os pacientes para ´N´.

3- Sobre a tabela Paciente, alterar o campo endereço para ‘Rua Melo Alves,40’ e cidade para ‘Itu” para o paciente de código = 02.

4- Excluir a consulta  de código 002, somente se o campo valor consulta for igual a zero.

5- Excluir o paciente 005

6- Excluir todos os pacientes da cidade de Sorocaba de sexo feminino.

7-Alterar o campo desconto de todos os pacientes de sexo feminino e  idade superior a 60 anos para ‘S’.

1- Alterar a data de nascimento do paciente de código = 001 para  primeiro de setembro de 1980.

2- Alterar o campo desconto de todos os pacientes para ´N´.

3- Sobre a tabela Paciente, alterar o campo endereço para ‘Rua Melo Alves,40’ e cidade para ‘Itu” para o paciente de código = 02.

4- Excluir a consulta  de código 002, somente se o campo valor consulta for igual a zero.

5- Excluir o paciente 005

6- Excluir todos os pacientes da cidade de Sorocaba de sexo feminino.

7-Alterar o campo desconto de todos os pacientes de sexo feminino e  idade superior a 60 nos para ‘S’.

8- Criar um novo campo na tabela paciente para registrar o telefone do paciente. Este campo deverá ser varchar(15). Inserir o número de telefone dos pacientes neste novo campo.

Update tb_paciente
Set telefone =

9- Renomeie a coluna cidpaciente da tabela paciente para CIDADE.

10- Criar um novo campo na tabela médico e_mail varchar(30).

11- Altere o campo e_mail criado aumentando para 40 posições.

12-Exclua agora este novo campo criado acima (você é muito indeciso.....).


========================================================================
Exercicio 7 -Dicas

select * from tb_paciente;

update tb_paciente
set desconto = 'S'
where datanasc < '08/29/1958';

update tb_paciente
set desconto = 'S'
where datanasc <= (getdate() - (60*365.25));

select * from tb_paciente
where    DATANASC < (getdate() - (60*365.25)) 

select (getdate() - (60*365.25))

select getdate()

