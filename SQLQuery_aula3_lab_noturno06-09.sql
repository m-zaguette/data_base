-- Aula do dia 06/09/2018 noturno

-- Na aula anterior criamos as tabelas abaixo:

Criando tabelas e dando nome às restrições


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

  -- Criando a tabela de Vendedor

  Create table Tb_vendedor2
  ( codvendedor int identity (1,1),
    nome varchar(50),
	faixa_comissao numeric(18,2),
	salario_fixo numeric(18,2));

	Alter table tb_vendedor2 ADD CONSTRAINT PK_TBvendedor_CODVENDEDOR Primary key (codvendedor)

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

   Alter table tb_ItemPedido2 ADD CONSTRAINT PK_TBitemPedido_NumProd Primary key (numpedido, codproduto)

   ALter Table tb_itemPedido2 add constraint FK_TBItemPedido_Numpedido Foreign key (numpedido) references tb_pedido
  
  ALter table tb_itempedido2 add constraint FK_TBItempedido_codproduto Foreign key (codproduto) references tb_produto

  ---------------------------------------------------------------------
  --- Hoje 06/09 terminar a Lista de Exercicios3 DDl-DML 

  Comandos DDL:

1.	Criar as tabelas do modelo indicado abaixo
2.	Criar os relacionamentos necessários (chaves primárias e chaves estrangeiras usando alter table)
3.	Adicionar na tabela Vendedor o campo DataNascimento do tipo Datetime

     alter table tb_vendedor2 add datanascimento datetime;

4.	Adicionar na tabela Cliente o campo Região do tipo varchar(30)
  
     alter table tb_cliente2 add regiao varchar(30)


5.	Alterar o campo Nome da tabela Cliente para varchar(100)

  alter table tb_cliente2 alter column nome varchar(100)


6.	Excluir a coluna UF da tabela Cliente

alter table tb_cliente drop column UF

--- Comandos DML:

1.	Inserir pelo menos 5 linhas de dados para cada tabela.

insert into tb_cliente2 Values (1,'João de Deus','Rua x, 30', 'Sorocaba', '18016655','SP') 
insert into tb_cliente2 Values (2,'Maria Souza','Rua y, 30', 'Sorocaba', '18016995','SP')
 insert into tb_cliente2 Values (3,'Ana Beatriz Silva','Rua azul, 40', 'Sorocaba', '18016995','SP')
 insert into tb_cliente2 Values (4,'Antonio Silva','Rua do Sol, 16', 'Sorocaba', '18016895','SP')

  select * from tb_cliente2

 insert into tb_vendedor2 values ('Pedro', 10.5, 1000.50,'12/30/1995');
  insert into tb_vendedor2 values ('Paulo Jose', 9.5, 860.50,'10/25/1985');
   insert into tb_vendedor2 values ('Carolina', 8.5, 1000.00,'08/30/2000');
    insert into tb_vendedor2 values ('Felipe', 5.0, 1500.50,'12/30/2000');
	 insert into tb_vendedor2 values ('Augusto', 10.5, 1000.50,'12/30/1995');

 select * from tb_vendedor2

 Insert into tb_produto2 values (


2.	Alterar o CEP de todos os clientes da cidade de Sorocaba para ‘18035-400’.

update tb_cliente2
set cep = '18035-400'
where cidade = 'Sorocaba'

3.	Alterar o prazo de entrega de todos os pedidos do cliente de código 20 para mais 10 dias.

update tb_pedido
set prazo_entrega = prazo_entrega + 10
where codcliente = 20;

4.	Alterar o preço unitário para mais 10% para todos os produtos com unidade = ‘KG’. 

5.	Excluir todos os produtos com unidade = ‘CX’ e valor unitário superior a 50,00.


