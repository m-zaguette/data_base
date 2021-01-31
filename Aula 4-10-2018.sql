/*Para juntar duas tabelas

Sintaxe SQL Server Management Studio
	select <o que quero>
	from <primeira tabela> inner join <segunda tabela>
	on <nome da tabela.<nome do campo da tabela>> = <nome da tabela.<nome do campo da tabela>>


Geralmente é escrito o <nome da tabela.<nome do campo da tabela>>

Sintaxe ORACLE

	select <o que quero>
	from <primeira tabela> inner join <segunda tabela>
	where <nome da tabela.<nome do campo da tabela>> = <nome da tabela.<nome do campo da tabela>>

Nessa tabela é falho porque os where ficariam juntos, portanto ficaria complicado para compreensão


A claúsula 'on' é uma ótima para evitar essa confusão


	Teste da aula junção de três tabelas:
	Exibir número do pedido, nome do cliente, código do vendedor e nome do vendedor.

		select <o que quero>
	from <primeira tabela> inner join <segunda tabela>
	on <nome da tabela.<nome do campo da tabela>> = <nome da tabela.<nome do campo da tabela>>
	inner join <terceira tabela>
	on <nome da tabela.<nome do campo da tabela>> = <nome da tabela.<nome do campo da tabela>> 
	where <clausula que quisesse>

	1)	
		SELECT TB_VENDEDOR.CodVendedor, TB_VENDEDOR.NomeVendedor
		FROM TB_PEDIDO INNER JOIN TB_VENDEDOR
		ON TB_PEDIDO.CODVENDEDOR = TB_VENDEDOR.CODVENDEDOR
		WHERE TB_PEDIDO.CODCLI = 10


*/