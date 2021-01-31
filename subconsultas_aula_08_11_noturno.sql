-- Subconsultas   aula de apoio
-- Prof. Maria Angelica C. de A. Cardieri  2018


Utilizamos subconsultas quando o resultado de uma consulta � utilizado por outra consulta, de forma encadeada e contida no mesmo comando SQL.

Operadores = > < >= <= <>

Exemplo 1:

-- Quais os  produtos com pre�o unit�rio menor que a m�dia?

  (select avg(valor_unit) from TB_produto)
  
--  supondo que devolva a media 6.50, podemos escrever a consulta abaixo:
  
  select descricao from TB_produto where valor_unit < 6.50

-- Por�m podemos usar subconsultas para este comando de forma :

   select descricao from TB_produto
where valor_unitario < (select avg(valor_unitario) from TB_produto)

select * from tb_produto

Exemplo 2:

select * from tb_cliente

-- Listar o nome do(s) cliente(s) que moram na mesma cidade
-- do ANTONIO RAFAEL

 select NOME_CLIENTE from tb_cliente
    where nome_cliente <> 'ANTONIO RAFAEL'  
    and cidade = (select cidade from tb_cliente where
                  NOME_CLIENTE = 'ANTONIO RAFAEL');	

select * from tb_cliente;

)

OPERADOR in e not in => testam pertin�ncia de conjuntos

- Exemplo 3:

-- listar o nome dos  clientes que tem pedidos (in)

 select cod_cliente,NOME_CLIENTE from Tb_cliente
 where COD_CLIENTE in ( select COD_cli from Tb_pedido);

 select * from tb_pedido

-- usando a interse��o (fica limitado pois exibe s� o c�digo devido as tabelas precisarem ter a mesma estrutura)
--
select cod_cliente  from TB_CLIENTE
intersect
select cod_cli from tb_pedido

ou usando jun��o (recomend�vel pois � melhor otimizada pelo banco)

=> DAR PREFERENCIA � JUN��ES do que subconsultas

select  from tb_cliente,tb_pedido
where tb_cliente.cod_cliente = tb_pedido.cod_cli and cidade = 'sorocaba';

ou

select  NOME_CLIENTE from tb_cliente inner join tb_pedido
on  tb_cliente.cod_cliente = tb_pedido.COD_CLI
where cidade = 'sorocaba';


-- Exemplo 4:

-- listar os cliente que n�o tem pedidos (usando not in)

    insert into tb_cliente values (100, 'maria angelica','rua x,14', 'Sorocaba', '18016666', 'centro');

 select NOME_CLIENTE from Tb_cliente
 where COD_CLIENTE not in ( select cod_cli from Tb_pedido )  
 

select * from tb_cliente

-- usando o comando except (minus -)


select cod_cliente from TB_CLIENTE
except
select COD_CLI from tb_pedido


select * from tb_pedido

update tb_pedido 
set COD_CLI = 3
where NUMERO_PEDIDO = 2000;

update tb_pedido
set codcli = 1 where numpedido = 3

---

--   Exemplo 5: Listar o nome do vendedor que não tem pedidos
--   com prazo de entrega outubro/2018
.
select * from tb_vendedor
select * from tb_pedido

--- preparando a tabela para testes

update tb_pedido
set PRAZO_ENTREGA= '08-31-2018'
where NUMERO_PEDIDO =1000;

 select tb_vendedor.cod_vendedor,nome_vendedor 
 from Tb_vendedor inner join tb_pedido
 on tb_pedido.COD_VENDEDOR=tb_vendedor.COD_VENDEDOR 
 where (month(prazo_entrega) <> '10') and year(prazo_entrega) = '2018';

 select * from tb_vendedor
 select * from tb_pedido

 update tb_pedido
 set CODVENDEDOR= 12 
 where numpedido = 102

 -- Obs: A consulta acima n�o contempla o vendedor que nunca fez pedido


select COD_VENDEDOR,NOME_VENDEDOR from Tb_vendedor
where codvendedor not in (select codvendedor from tb_pedido
        where year(prazo_entrega) = '2018' and month(prazo_entrega)='10'); 

-- -- Exemplo 6: Listar o c�digo do produto que tem o menor pre�o unitario.

select descricao from tb_produto
where valor_unit = (select min(valor_unit) from tb_produto)

select * from tb_produto


-- Exemplo 7: 	Quais vendedores n�o fizeram mais de 2 pedidos.

  select * from tb_vendedor where codvendedor not in 
   (select codvendedor from tb_pedido
   group by codvendedor
   having count(*) > 2)

   select * from tB_PEDIDO