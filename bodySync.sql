
--Criando Pessoa
create TABLE Pessoa (
  cpf varchar(11) primary key, 
  nome_completo varchar(60),
  data_nasc DATE,
  telefone01 varchar(15),
  telefone02 varchar(15));
  
-- Insert Pessoa
INSERT INTO Pessoa (cpf, nome_completo, data_nasc, telefone01, telefone02)
VALUES
  (19245005621, 'João Silva', '1990-05-15', '(88)99709330', '(88)96759410'),
  (98765432109, 'Maria Santos', '1985-12-02', '(85)99203348', '(85)19719131'),
  (18762433189, 'Gustavo Armando', '2002-08-29', '(88)99759367', '(88)91734370'),
  (11762423749, 'Asis Paiva', '2004-12-30', '(84)95789869', '(84)91135399'),
  (18762132139, 'Joao Pedro', '2001-11-12', '(88)91752363', '(88)82744170'),
  (78761463184, 'Alex Gato', '2008-10-10', '(79)89719317', '(79)94714971'),
  (18711423149, 'Clara Ivya', '2004-02-12', '(85)89719367', '(85)92734560'),
  (48762413139, 'Yara Maria', '1993-01-19', '(81)19293461', '(81)91133350'),
  (98361431139, 'Caio Cezar', '1992-07-02', '(88)99151360', '(88)11724334'),
  (11762733888, 'Danubio Alves', '2007-01-29', '(89)91752336', '(81)11724375');

--Criando Endereço
CREATE TABLE ENDERECO (
 cpf varchar(11),
 rua VARCHAR(30),
 numero INT,
 bairro VARCHAR(10),
 cep VARCHAR(11),
 FOREIGN KEY(cpf) REFERENCES Pessoa(cpf)
 );
 
-- Insert Endereço 
INSERT INTO endereco (cpf, rua, numero, bairro, cep)
VALUES
  (19245005621, 'rua rui maia', 790, 'Centro', '63900-000'), 
  (98765432109, 'rua Luiz Montenegro', 567, 'Siqueira', '654678-098'),
  (18762433189, 'rua Raquel de Queiroz', 12, 'Carrascal', '124378-118'),
  (11762423749, 'rua da Lama', 121, 'Planalto ', '112378-108'),
  (18762132139, 'av. Placido Castelo', 456, 'Centro ', '654378-000'),
  (78761463184, 'rua Dr. Rui Maia', 256, 'Herval', '654307-001'),
  (18711423149, 'rua do Centro', 120, 'Centro', '63901-011'),
  (48762413139, 'rua Beco da Poera', 1201, 'Dinal', '64905-011'),
  (98361431139, 'av. da Gia', 201, 'Praia', '62905-611'),
  (11762733888, 'rua Cidade 2000', 5611, 'Praia', '123305-611');

--Criando Aluno
CREATE TABLE Aluno (
    id_aluno int primary key,
    cpf varchar(11),
    data_pag DATE,
    tipo_plano VARCHAR(10),
    preco FLOAT,
    foreign key(cpf) references Pessoa(cpf)
    );
    
--Insert Aluno
INSERT INTO Aluno (id_aluno, cpf, data_pag, tipo_plano, preco)
VALUES 
  (1, 19245005621, '2023-08-12', 'Mensal', 60.0),
  (2, 98765432109, '2023-06-19', 'Mensal', 60.0),
  (3, 18762433189, '2023-01-13', 'Anual', 600.0),
  (4, 11762423749, '2023-02-15', 'Mensal', 100.0),
  (5, 18762132139 , '2023-02-17', 'Mensal', 100.0),
  (6, 78761463184 , '2023-12-31', 'Anual', 1000.0),
  (7, 18711423149, '2023-10-21', 'Mensal', 100.0),
  (8, 48762413139, '2023-06-09', 'Anual', 1500.0),
  (9, 98361431139, '2023-02-19', 'Mesal', 60.0);
  
--Criando Professor
CREATE TABLE Professor (
  id_professor int primary key,
  cpf varchar(11),
  salario float,
  area varchar(20),
  data_contrato DATE,
  foreign key(cpf) references Pessoa(cpf)
  );
--Insert Professor
INSERT INTO Professor (id_professor, cpf, salario, area, data_contrato)
VALUES 
  (1, 11762733888, 1200.0, 'Funcional', '2020-08-20'),
  (2, 78761463184, 5000.0, 'Musculacao', '2020-08-20'),
  (3, 98765432109, 1200.0, 'Musculacao', '2022-12-25'),
  (4, 98361431139, 1300.0, 'Cardio', '2023-11-15');
  
--Criando Desconto
CREATE TABLE Desconto (
    id_professor int,
    cpf varchar(11),
    valor_desconto FLOAT,
    FOREIGN KEY (cpf) REFERENCES Pessoa(cpf),
    foreign key (id_professor) references Professor(id_professor)
    );
    
--Insert Desconto
INSERT INTO Desconto (id_professor, cpf, valor_desconto)
VALUES     
  (2, 78761463184, 100),
  (3, 98765432109, 20),
  (4, 98361431139, 20);

--Criando Avaliacao_Fisica
CREATE TABLE Avaliacao_Fisica (
  cpf varchar(11), 
  data DATE,
  horario VARCHAR(8),
  foreign key(cpf) references Pessoa(cpf)
);
  
-- Insert Avaliacao_Fisica
INSERT INTO Avaliacao_Fisica (cpf, data, horario)
VALUES
  ('19245005621', '2023-10-15', '08:30:00'),
  ('98765432109', '2023-10-16', '09:15:00'),
  ('18762433189', '2023-10-17', '14:45:00'),
  ('11762423749', '2023-10-18', '10:30:00'),
  ('18762132139', '2023-10-19', '11:20:00'),
  ('78761463184', '2023-10-20', '16:00:00'),
  ('98361431139', '2023-10-23', '15:30:00');


--Criando Planos  
CREATE TABLE Planos (
 cpf varchar(11),
 objetivo VARCHAR(15),
 treino_personalizado VARCHAR(200),
 acompanhamento VARCHAR(10),
 feedbacks varchar(50),
 foreign key(cpf) references Pessoa(cpf)
 );

--Insert Planos
INSERT INTO Planos (cpf, objetivo, treino_personalizado, acompanhamento, feedbacks)
VALUES
    ('19245005621', 'Perda de Peso', 'Treino focado em cardio', 'Sim', 'Feedback semanal'),
    ('98765432109', 'Ganho de Massa Muscular', 'Treino de musculação intensivo', 'Sim', 'Feedback quinzenal'),
    ('18762433189', 'Condicionamento Físico', 'Treino misto de cardio e musculação', 'Não', 'Feedback mensal'),
    ('11762423749', 'Perda de Peso', 'Treino e dieta personalizados', 'Sim', 'Feedback semanal'),
    ('18762132139', 'Ganho de Massa Muscular', 'Treino de musculação pesado', 'Sim', 'Feedback semanal'),
    ('78761463184', 'Condicionamento Físico', 'Treino funcional e corrida', 'Não', 'Feedback mensal'),
    ('18711423149', 'Perda de Peso', 'Treino cardio e dieta balanceada', 'Sim', 'Feedback semanal'),
    ('48762413139', 'Ganho de Massa Muscular', 'Treino de musculação e dieta rica em proteínas', 'Sim', 'Feedback quinzenal'),
    ('98361431139', 'Condicionamento Físico', 'Treino de resistência e yoga', 'Não', 'Feedback mensal');

-- Criando Aula
CREATE TABLE Aula (
 id_aula INT PRIMARY KEY,
 quant_aluno INT,
 hora_inicio TIME, 
 hora_final TIME,
 id_professor int,
 tipo_aula VARCHAR(20),
 foreign key(id_professor) references Professor(id_professor)
 );
 
 -- Insert Aula
INSERT INTO Aula (id_aula, cpf, quant_aluno, hora_inicio, hora_final, id_professor, tipo_aula)
VALUES
    (1, 10, '08:00:00', '09:30:00', 1, 'Yo'),
    (2, 15, '10:00:00', '11:30:00', 2, 'Musculação'),
    (3, 8, '14:00:00', '15:30:00', 3, 'Pilates'),
    (4, 12, '16:00:00', '17:30:00', 4, 'Spinning'),
    (5, 20, '18:00:00', '19:30:00', 4, 'Aeróbica');
    
-- Criando Equipamentos
CREATE TABLE Equipamentos (
 id_equipamentos INT PRIMARY KEY,
 id_aula INT,
 nome VARCHAR(15),
 condicao varchar(10),
 quantidade VARCHAR(10),
 data_manutncao DATE,
 FOREIGN KEY(id_aula) REFERENCES Aula(id_aula)
 );
 
 -- Insert Equipamentos
INSERT INTO Equipamentos (id_equipamentos, id_aula, nome, condicao, quantidade, data_manutencao)
VALUES
    (1, 1, 'Tapete Yoga', 'Bom', '10', '2023-10-15'),
    (2, 2, 'Máquina de Pesos', 'Excelente', '15', '2023-10-16'),
    (3, 3, 'Bolas de Pilates', 'Boa', '8', '2023-10-17'),
    (4, 4, 'Bicicletas Spinning', 'Excelente', '12', '2023-10-18'),
    (5, 5, 'Step Aeróbica', 'Bom', '20', '2023-10-19');

--1.Quantos professores dao aula de musculacao: ok
SELECT COUNT(DISTINCT p.id_professor) AS total_professores
FROM Professor AS p
JOIN Aula AS a ON p.id_professor = a.id_professor
WHERE a.tipo_aula = 'musculacao';


--2.Quantos alunos têm um plano de "Perda de Peso" e recebem feedback semanal? ok

SELECT COUNT(DISTINCT p.cpf) AS total_alunos
FROM Pessoa AS p
JOIN Planos AS pl ON p.cpf = pl.cpf
WHERE pl.objetivo = 'Perda de Peso' AND pl.feedbacks = 'Feedback semanal';

--3.Quais são os alunos que têm planos de "Condicionamento Físico" com treino personalizado? ok
SELECT p.nome_completo
FROM Pessoa AS p
JOIN Aluno AS a ON p.cpf = a.cpf
JOIN Planos AS pl ON a.cpf = pl.cpf
WHERE pl.objetivo = 'Condicionamento Físico' AND pl.treino_personalizado IS NOT NULL;;

--4.Quais são os professores que têm contratos iniciados após 1º de janeiro de 2023? ok
SELECT p.nome_completo, pr.data_contrato
FROM Pessoa AS p
JOIN Professor AS pr ON p.cpf = pr.cpf
WHERE pr.data_contrato > '2023-01-01';


--5.Qual é a quantidade total de equipamentos em boas condições (condição = 'Bom') em cada aula? ok

SELECT a.id_aula, COUNT(e.id_equipamentos) AS total_equipamentos_bons
FROM Aula AS a
JOIN Equipamentos AS e ON a.id_aula = e.id_aula
WHERE UPPER(e.condicao) IN ('BOM', 'BOA')
GROUP BY a.id_aula;

--6.Quais sao os professores que tem desconto? ok

SELECT p.nome_completo, d.valor_desconto
FROM Pessoa AS p
JOIN Professor AS pr ON p.cpf = pr.cpf
JOIN Desconto AS d ON pr.id_professor = d.id_professor;






