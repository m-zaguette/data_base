/*Para juntar duas tabelas

Sintaxe SQL Server Management Studio
	select <o que quero>
	from <primeira tabela> inner join <segunda tabela>
	on <nome da tabela.<nome do campo da tabela>> = <nome da tabela.<nome do campo da tabela>>


Geralmente � escrito o <nome da tabela.<nome do campo da tabela>>

Sintaxe ORACLE

	select <o que quero>
	from <primeira tabela> inner join <segunda tabela>
	where <nome da tabela.<nome do campo da tabela>> = <nome da tabela.<nome do campo da tabela>>

Nessa tabela � falho porque os where ficariam juntos, portanto ficaria complicado para compreens�o


A cla�sula 'on' � uma �tima para evitar essa confus�o


	Teste da aula jun��o de tr�s tabelas:
	Exibir n�mero do pedido, nome do cliente, c�digo do vendedor e nome do vendedor.

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