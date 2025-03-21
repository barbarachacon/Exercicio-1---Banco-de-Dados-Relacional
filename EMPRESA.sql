CREATE DATABASE EMPRESA;

USE EMPRESA;

CREATE TABLE FUNCIONARIO (
    Pnome VARCHAR(50),
    Minicial CHAR(1),
    Unome VARCHAR(50),
    Cpf CHAR(11) PRIMARY KEY,
    Datanasc DATE,
    Endereco VARCHAR(100),
    Sexo CHAR (1),
    Salario DECIMAL(10, 2),
    Cpf_supervisor CHAR(11),
    DNR INT
);

CREATE TABLE DEPARTAMENTO (
    Dnome VARCHAR (50),
    Dnumero INT PRIMARY KEY,
    Cpf_gerente CHAR(11),
    Data_inicio_gerente DATE
);

CREATE TABLE LOCALIZACAO_DEP (
    Dnumero INT,
    Dlocal VARCHAR(50),
    PRIMARY KEY (Dnumero, Dlocal)

);

CREATE TABLE PROJETO (
    Projnome VARCHAR(50),
    Projnumero INT PRIMARY KEY,
    Projlocal VARCHAR(50),
    Dnum INT
);

CREATE TABLE TRABALHA_EM (
    Fcpf CHAR(11) PRIMARY KEY,
    Pnr INT,
    Horas DECIMAL (3, 1),
    PRIMARY KEY(Fcpf, Pnr)
);

CREATE TABLE DEPENDENTE (
    Fcpf CHAR(11),
    Nome_dependente VARCHAR(50),
    Sexo CHAR(1),
    Datanasc DATE,
    Parentesco VARCHAR(30),
    PRIMARY KEY (Fcpf, Nome_dependente)
);

INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr)
VALUES ('João', 'B', 'Silva', '12345678966', '1965-01-09', 'Rua das Flores, 751, São Paulo, SP', 'M', '30.000', '33344555587', '5');
INSERT INTO FUNCIONARIO VALUES ('Fernando', 'T', 'Wong', '33344555587', '1955-12-08', 'Rua da Lapa, 34, São Paulo, SP', 'M', '40.000', '88866555576', '5');
INSERT INTO FUNCIONARIO VALUES ('Alice', 'J', 'Zelaya', '99988777767', '1968-01-19', 'Rua Souza Lima, 35, Curitiba, PR', 'F', '25.000', '98765432168', '4');
INSERT INTO FUNCIONARIO VALUES ('Jennifer', 'S', 'Souza', '98765432168', '1941-06-20', 'Av. Arthur de Lima, 54, Santo André, SP', 'F', '43.000', '88866555576', '4');
INSERT INTO FUNCIONARIO VALUES ('Ronaldo', 'K', 'Lima', '66688444476', '1962-09-15', 'Rua Rebouças, 65, Piracicaba, SP', 'M', '38.000', '3344555587', '5');
INSERT INTO FUNCIONARIO VALUES ('Joice', 'A', 'Leite', '45345345376', '1972-07-31', 'Av. Lucas Obeo, 74, São Paulo, SP', 'F', '25.000', '3344555587', '5');
INSERT INTO FUNCIONARIO VALUES ('André', 'V', 'Pereira', '98798798733', '1969-03-29', 'Rua Timbira, 35, São Paulo, SP', 'M', '25.000', '98765432168', '4');
INSERT INTO FUNCIONARIO VALUES ('Jorge', 'E', 'Brito', '88866555576', '1937-11-10', 'Rua do Horto, 35, São Paulo, SP', 'M', '55.000', 'NULL', '1');

INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES ('Pesquisa', '5', '33344555587', '1988-05-22');
INSERT INTO DEPARTAMENTO VALUES ('Administração', '4', '98765432168', '1995-01-01');
INSERT INTO DEPARTAMENTO VALUES ('Matriz', '1', '88866555576', '1981-06-19');

INSERT INTO LOCALIZACAO_DEP (Dnumero, Dlocal)
VALUES ('1', 'São Paulo');
INSERT INTO LOCALIZACAO_DEP VALUES ('4', 'Mauá');
INSERT INTO LOCALIZACAO_DEP VALUES ('5', 'Santo André');
INSERT INTO LOCALIZACAO_DEP VALUES ('5', 'Itu');
INSERT INTO LOCALIZACAO_DEP VALUES ('5', 'São Paulo');

INSERT INTO TRABALHA_EM (Fcpf, Pnr, Horas)
VALUES ('12345678966', '1', '32.5');
INSERT INTO TRABALHA_EM VALUES('12345678933', '2', '7.5');
INSERT INTO TRABALHA_EM VALUES('66688444476', '3', '40.0');
INSERT INTO TRABALHA_EM VALUES('45345345376', '1', '20.0');
INSERT INTO TRABALHA_EM VALUES('45345345376', '2', '20.0');
INSERT INTO TRABALHA_EM VALUES('33344555587', '2', '10.0');
INSERT INTO TRABALHA_EM VALUES('33344555587', '3', '10.0');
INSERT INTO TRABALHA_EM VALUES('33344555587', '10', '10.0');
INSERT INTO TRABALHA_EM VALUES('33344555587', '20', '10.0');
INSERT INTO TRABALHA_EM VALUES('99988777767', '30', '30.0');
INSERT INTO TRABALHA_EM VALUES('99988777767', '10', '10.0');
INSERT INTO TRABALHA_EM VALUES('98798798733', '10', '35.0');
INSERT INTO TRABALHA_EM VALUES('98798798733', '30', '5.0');
INSERT INTO TRABALHA_EM VALUES('98765432168', '30', '20.0');
INSERT INTO TRABALHA_EM VALUES('98765432168', '20', '15.0');
INSERT INTO TRABALHA_EM VALUES('88866555576', '20', NULL);

INSERT INTO PROJETO (Projnome, Projnumero, Projlocal, Dnum)
VALUES ('ProdutoX', '1', 'Santo André', '5');
INSERT INTO PROJETO VALUES ('ProdutoY', '2', 'Itu', '5');
INSERT INTO PROJETO VALUES ('ProdutoZ', '3', 'São Paulo', '5');
INSERT INTO PROJETO VALUES ('Informatização', '10', 'Mauá', '4');
INSERT INTO PROJETO VALUES ('Reorganização', '20', 'São Paulo', '1');
INSERT INTO PROJETO VALUES ('Novosbeneficios', '30', 'Mauá', '4');

INSERT INTO DEPENDENTE (Fcpf, Nome_dependente, Sexo, Datanasc, Parentesco)
VALUES ('33344555587', 'Alicia', 'F', '1986-04-05', 'Filha');
INSERT INTO DEPENDENTE VALUES ('33344555587', 'Tiago', 'M', '1983-10-25', 'Filho');
INSERT INTO DEPENDENTE VALUES ('33344555587', 'Janaina', 'F', '1958-05-03', 'Esposa');
INSERT INTO DEPENDENTE VALUES ('98765432168', 'Antonio', 'M', '1942-02-28', 'Marido');
INSERT INTO DEPENDENTE VALUES ('12345678966', 'Michael', 'M', '1988-01-04', 'Filho');
INSERT INTO DEPENDENTE VALUES ('12345678966', 'Alicia', 'F', '1988-12-30', 'Filha');
INSERT INTO DEPENDENTE VALUES ('12345678966', 'Elizabeth', 'F', '1967-05-05', 'Esposa');

SELECT F.Pnome, F.Unome
FROM FUNCIONARIO F
JOIN TRABALHA_EM TE ON F.Cpf = TE.Fcpf
JOIN PROJETO P ON TE.Pnr = P.Projnumero
WHERE F.Dnr = 5 AND P.Projnome = 'ProdutoX' AND TE.Horas > 10;

SELECT F.Pnome, F.Unome
FROM FUNCIONARIO F
JOIN DEPENDENTE D ON F.Cpf = D.Fcpf
WHERE F.Pnome = D.Nome_dependente;

SELECT F.Pnome, F.Unome
FROM FUNCIONARIO F
WHERE F.Cpf_supervisor = (SELECT Cpf FROM FUNCIONARIO WHERE Pnome = 'Fernando' AND Unome = 'Wong');


