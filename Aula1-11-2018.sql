SELECT * FROM Cliente;
SELECT * FROM Pedido;
SELECT * FROM Produto;
SELECT * FROM Vendedor;
SELECT * FROM ItemPedido;


--Exercício 1:

SELECT CodProduto, Descricao,Quando = 'Antes do aumento', ValorUnitario
FROM Produto
UNION
SELECT CodProduto, Descricao,Quando = 'Depois do aumento', ValorUnitario*1.1
FROM Produto
ORDER BY CodProduto;

--Exercício 2:
SELECT STR(CodProduto), Descricao, ValorUnitario
FROM Produto
UNION
SELECT '', Descricao = 'Soma dos valores', ValorUnitario = SUM (ValorUnitario)
FROM Produto
ORDER BY 3;

--Exercício 3:
SELECT CodCliente
FROM Cliente
INTERSECT
SELECT CodCliente
FROM Pedido
ORDER BY CodCliente;

--Exercício 4:
SELECT CodCliente
FROM Cliente
EXCEPT
SELECT CodCliente
FROM Pedido
ORDER BY CodCliente;