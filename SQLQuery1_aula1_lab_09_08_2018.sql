
--- aula do dia 09-08 Noturno

-- Cria��o de tabela

create table tb_clienteNOVO
(codcliente int primary key,
 nome  varchar(150),
 email varchar(100),
 CPF varchar(20));


 --- Inclus�o de uma nova coluna

 alter table tb_clienteNovo add  endereco varchar(250);


 --- Altera��o do tamanho de uma coluna j� incluida
 --- Aten��o: isto s�ser� poss�vel se n�o houver perda de dados

 alter table tb_clienteNovo alter column endereco varchar(150);

 -- excluir a coluna endereco

 alter table tb_clienteNovo drop column endereco;

 --- s� deixar� excluir se a coluna endereco n�o contiver dados