-- aula do dia 05 de setembro

select * from tb_paciente

select * from tb_paciente
where cidade = 'Sorocaba' and sexo = 'F'

-- alterando o cabeçalho da coluna

select nompaciente 'Nome do Paciente',datanasc from tb_paciente

select nompaciente as NOME,datanasc from tb_paciente

-- ordenando a saida

select nompaciente as NOME,datanasc from tb_paciente
order by NOME desc


select nompaciente as NOME,datanasc from tb_paciente
order by datanasc, Nome

-- listar os pacientes que nasceram entre 01/01/2000 a 31/12/2015

select * from tb_paciente
where datanasc >= '01/01/2000' and datanasc <= '12/31/2015'

select * from tb_paciente
where datanasc between  '01/01/2000' and '12/31/2015'

select cidade from tb_paciente

select distinct cidade from tb_paciente

-- pesquisa de string

--listar todos os pacientes que tem santos no nome

select * from tb_paciente
where nompaciente like '%Santos%'

select * from tb_paciente where day(datanasc) = '05'



===== Elaboração da lista de exrcicios 03 - Cliente -pedido

create table tb_cliente
( CodCliente int not null,
  nome varchar(50) not null,
  endereco varchar(100),
  cidade varchar(50),
  Cep varchar(10),
  UF char(2));


  -- ALter table tb_cliente alter column codcliente int not null (comando para adicionar not null a coluna)

  -- Criando a chave primaria dando nome à restrição de PK

  Alter table tb_cliente ADD CONSTRAINT PK_TBCLIENTE_CODCLIENTE Primary key (codcliente)
   Create table Tb_vendedor2
  ( codvendedor int identity (1,1),
    nome varchar(50),
	faixa_comissao numeric(18,2),
	salario_fixo numeric(18,2));

	Alter table tb_vendedor2 ADD CONSTRAINT PK_TBvendedor_CODVENDEDOR Primary key (codvendedor)  -- ** paramos aqui dia 5/09

-- Criando a tabela de Produto

Create table tb_produto2
( Codproduto int identity (1,1),
  descricao varchar (200),
  unidade char(2),
  valorUnitario numeric(18,2));
  

  Alter table tb_produto2 ADD CONSTRAINT PK_TBProduto_CODprodutoR Primary key (codproduto)


  -- Tabela de Pedido

  Create table tb_pedido2
  ( numpedido int identity (1,1),
    PrazoEntrega datetime,
	CodCliente int,
	codvendedor int);

Alter table tb_pedido2 ADD CONSTRAINT PK_TBPedido_numpedido Primary key (numpedido)

ALter table tb_pedido2
 ADD CONSTRAINT FK_TBPedido_Codcliente Foreign key (codcliente) references tb_cliente;

 ALter table tb_pedido2
 ADD CONSTRAINT FK_TBPedido_Codvendedor Foreign key (codvendedor) references tb_vendedor;

 -- Tabela itempedido

 Create table Tb_itemPedido2
 ( numpedido int not null,
   codproduto int not null,
   qtde numeric(18,2))

   Alter table tb_ItemPedido2 ADD CONSTRAINT PK_TBitemPedido2 Primary key (numpedido, codproduto)

   alter table tb_itemPedido2 ADD CONSTRAINT FK_TBITEMPEDIDO2_NUMPEDIDO
                                         FOREIGN KEY(NUMPEDIDO) REFERENCES TB_PEDIDO2;

   ALTER TABLE TB_ITEMPEDIDO2 ADD CONSTRAINT FK_TBITEMPEDIDO_CODPRODUTO2
                                         FOREIGN KEY (CODPRODUTO) REFERENCES TB_PRODUTO2

   ----- AULA DO DIA 12-09  - COMPLEMENTANDO AS TABELAS CRIADAS


  1.	Criar as tabelas do modelo indicado abaixo

2.	Criar os relacionamentos necessários (chaves primárias e chaves estrangeiras usando alter table)

3.	Adicionar na tabela Vendedor o campo DataNascimento do tipo Datetime

ALTER TABLE TB_VENDEDOR ADD  DATANASCIMENTO DATETIME;

4.	Adicionar na tabela Cliente o campo Região do tipo varchar(30)

ALTER TABLE TB_CLIENTE2 ADD REGIAO VARCHAR(30)

5.	Alterar o campo Nome da tabela Cliente para varchar(100)

ALTER TABLE TB_CLIENTE2 ALTER COLUMN NOME VARCHAR(100)

6.	Excluir a coluna UF da tabela Cliente

ALTER TABLE TB_CLIENTE2 DROP COLUMN uf


insert into tb_cliente2 Values (1,'João de Deus','Rua x, 30', 'Sorocaba', '18016655','SP') 
insert into tb_cliente2 Values (2,'Maria Souza','Rua y, 30', 'Sorocaba', '18016995','SP')
 insert into tb_cliente2 Values (3,'Ana Beatriz Silva','Rua azul, 40', 'Sorocaba', '18016995','SP')
 insert into tb_cliente2 Values (6,'Antonio Silva','Rua do Sol, 16', 'Sorocaba', '18016895','SP')

  select * from tb_cliente2

 insert into tb_vendedor2 values ('Pedro', 10.5, 1000.50,'12/30/1995');
  insert into tb_vendedor2 values ('Paulo Jose', 9.5, 860.50,'10/25/1985');
   insert into tb_vendedor2 values ('Carolina', 8.5, 1000.00,'08/30/2000');
    insert into tb_vendedor2 values ('Felipe', 5.0, 1500.50,'12/30/2000');
	 insert into tb_vendedor2 values ('Augusto', 10.5, 1000.50,'12/30/1995');



	   select * from tb_VENDEDOR2

	   Comandos DML:

1.	Inserir pelo menos 5 linhas de dados para cada tabela.
2.	Alterar o CEP de todos os clientes da cidade de Sorocaba para ‘18035-400’.
3.	Alterar o prazo de entrega de todos os pedidos do cliente de código 20 para mais 10 dias.
4.	Alterar o preço unitário para mais 10% para todos os produtos com unidade = ‘KG’. 
5.	Excluir todos os produtos com unidade = ‘CX’ e valor unitário superior a 50,00.
