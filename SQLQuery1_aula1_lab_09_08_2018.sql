
--- aula do dia 09-08 Noturno

-- Criação de tabela

create table tb_clienteNOVO
(codcliente int primary key,
 nome  varchar(150),
 email varchar(100),
 CPF varchar(20));


 --- Inclusão de uma nova coluna

 alter table tb_clienteNovo add  endereco varchar(250);


 --- Alteração do tamanho de uma coluna já incluida
 --- Atenção: isto sóserá possível se não houver perda de dados

 alter table tb_clienteNovo alter column endereco varchar(150);

 -- excluir a coluna endereco

 alter table tb_clienteNovo drop column endereco;

 --- só deixará excluir se a coluna endereco não contiver dados