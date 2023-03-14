 --Criando banco de dados para exercicios da semana07
CREATE DATABASE SEMANA07 



--Criando tabela Cliente com os atributos a seguir (Exemplo de resolu��o do exerc�cio 1 da semana 7)
CREATE TABLE CLIENTE(
ID INT PRIMARY KEY IDENTITY(1,1),
NOME VARCHAR(20)NOT NULL,
TELEFONE VARCHAR(11)NOT NULL,
ENDERECO VARCHAR(50)NOT NULL
);

--Este comando foi necessario pois acusou o seguinte erroquando foi tentato inserir valores como ID(N�o � poss�vel inserir um valor expl�cito para a coluna de identidade na tabela 'Visitas' quando IDENTITY_INSERT est� definido como OFF.
SET IDENTITY_INSERT CLIENTE ON
--Criando um script para inserir os seguintes clientes:(Exemplo de resolu��o do exercicio 2 da semana 7)
INSERT INTO  CLIENTE(ID,NOME,TELEFONE,ENDERECO) VALUES ('1','Vinicius Silva','987654','Rua Girassol')
--Criando um script para inserir os seguintes clientes:(Exemplo de resolu��o do exercicio 2 da semana 7)
INSERT INTO  CLIENTE(ID,NOME,TELEFONE,ENDERECO) VALUES ('2','Maria Antonia', '654123','Rua Rosas')
--Criando um script para inserir os seguintes clientes:(Exemplo de resolu��o do exercicio 2 da semana 7)
INSERT INTO  CLIENTE(ID,NOME,TELEFONE,ENDERECO) VALUES ('3','Marcus Vinicius','654123','Rua Itajai')

--Comando usado para exibir todos dados que est�o na tabela cliente(Resolu��o do exerc�cio 3 da semana 7).
SELECT*FROM CLIENTE

--Comando usado para exibir clientes filtrando pelo campo Id,onde pode especificar qual valor de ID necessita,assim sem o valor passado ele mostra todos IDs.(Exemplo de resolu��o do exercicio 4 da semana 7).
SELECT * FROM CLIENTE WHERE ID =   ID

--Comando para filtrar os clientes utilizando o like '%%' ,em especifico ele filtrara todos clientes que tiverem nome 'Maria'(Resolu��o do exercicio 5 da semana 7).
SELECT * FROM CLIENTE WHERE NOME LIKE '%MARIA%'

--Comando para atualizar o endere�o do Marcus Vinicius para : Rua do Lim�o,especificando atrav�s de um comando WHERE ID para n�o atualizar todos endere�os
UPDATE CLIENTE SET ENDERECO = 'Rua do Lim�o' WHERE ID = 3

--Comando para para excluir o cliente Id 2,com aten��o para executar juntamente ao comando WHERE ID para n�o acabar excluido todos clientes.(Exemplo de resolu��o do exerc�cio 7 da semana 7).
DELETE FROM CLIENTE WHERE ID = 2