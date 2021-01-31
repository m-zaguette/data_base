--Executar nessa ordem e um por vez!--


CREATE TABLE Cliente(
CodCliente NUMERIC(18,0) IDENTITY NOT NULL PRIMARY KEY,
Nome VARCHAR(50),
Endereco VARCHAR(100),
Cidade VARCHAR(50),
CEP VARCHAR(10),
UF VARCHAR(2));

CREATE TABLE Vendedor(
CodVendedor NUMERIC(18,0) IDENTITY NOT NULL PRIMARY KEY,
Nome VARCHAR(50),
FaixaComissao NUMERIC(18,2),
SalarioFixo NUMERIC (18,2));

CREATE TABLE Produto(
CodProduto NUMERIC(18,0) IDENTITY NOT NULL PRIMARY KEY,
Descricao VARCHAR(100),
Unidade VARCHAR(2),
ValorUnitario NUMERIC(18,2));

CREATE TABLE Pedido(
NumPedido NUMERIC(18,0) IDENTITY NOT NULL PRIMARY KEY,
PrazoEntrega DATETIME,
CodCliente NUMERIC(18,0) FOREIGN KEY (CodCliente) REFERENCES Cliente,
CodVendedor NUMERIC(18,0) FOREIGN KEY (CodVendedor) REFERENCES Vendedor );

CREATE TABLE ItemPedido(
NumPedido NUMERIC(18,0) NOT NULL,
CodProduto NUMERIC(18,0) NOT NULL,
PRIMARY KEY(NumPedido, CodProduto),
Quantidade NUMERIC(18,0));

ALTER TABLE ItemPedido ADD CONSTRAINT FK_NumPedido FOREIGN KEY (NumPedido) REFERENCES Pedido;
ALTER TABLE ItemPedido ADD CONSTRAINT FK_CodProduto FOREIGN KEY (CodProduto) REFERENCES Produto;



SELECT * FROM Cliente;
SELECT * FROM Vendedor;
SELECT * FROM Produto;
SELECT * FROM Pedido;
SELECT * FROM ItemPedido;

INSERT INTO Cliente VALUES ('Marcelo','Rua Zero','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Marina','Rua Um','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Marcio','Rua Dois','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Mariana','Rua Tres','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Mario','Rua Quatro','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Anderson','Rua Cinco','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Alex','Rua Seis','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Alexandre','Rua Sete','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Giuseppe','Rua Nove','Sorocaba','18014200','SP');
INSERT INTO Cliente VALUES ('Giuliana','Rua Dez','Sorocaba','18014200','SP');

INSERT INTO Vendedor VALUES ('Jose',200.00,2000.00);
INSERT INTO Vendedor VALUES ('Maria',300.00,2000.00);

INSERT INTO Produto VALUES ('Canetas da Pentel','un',3.00);
INSERT INTO Produto VALUES ('Canetas da Bic','un',0.80);

INSERT INTO Pedido VALUES (2018/10/16/2018,10,2);
INSERT INTO Pedido VALUES (2018/10/16/2018,10,1);

INSERT INTO ItemPedido VALUES (3,1,200);
INSERT INTO ItemPedido VALUES (4,2,1000);
