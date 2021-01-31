--testando visões

SELECT *
FROM tb_paciente;

--Vai deletar para criar uma nova visão sem deixar inserir valores diferentes da cláusula WHERE
DROP VIEW Pac_Sor;

CREATE VIEW Pac_Sor
as
SELECT *
FROM tb_paciente
WHERE cidpaciente = 'Sorocaba'
WITH CHECK OPTION;

SELECT * 
FROM Pac_Sor
WHERE Sexo = 'M'

UPDATE Pac_Sor
SET Endereco = 'Rua Maravilha, 2'
WHERE Codpaciente = 4;

SELECT * FROM tb_paciente;
SELECT * FROM tb_consulta;
SELECT * FROM tb_medico;

DELETE Pac_Sor
WHERE Codpaciente = 2;

INSERT INTO Pac_Sor VALUES (55,'Carla', '02/02/1990','F','Rua abc,30', 'Sorocaba','N',500);
INSERT INTO Pac_Sor VALUES (56,'Bruna', '02/02/1990','F','Rua abc,30', 'ITU','N',500);
INSERT INTO Pac_Sor VALUES (57,'Bruna2', '02/02/1990','F','Rua abc,30', 'ITU','N',500);


--Exercício: Criar uma visão com apenas as colunas codpaciente, nomepaciente e sexo somente dos pacientes que moram em Sorocaba

CREATE VIEW Pac
as
SELECT Codpaciente, Nompaciente, Sexo
FROM tb_paciente
WHERE Cidpaciente = 'Sorocaba';

SELECT * FROM Pac;