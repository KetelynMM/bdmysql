CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
    idade int,
    cpf varchar (255),
    cargo varchar(255),
    salario decimal(6,2),
    primary key(id)
    );
    
SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, idade, cpf, cargo, salario)
values ("Carlos Eduardo Ferreira", 22, "3994551891", "dev junior", 1960);
INSERT INTO tb_colaboradores(nome, idade, cpf, cargo, salario)
values ("Erica Marques da Silva", 21, "3991658791", "dev pleno", 4150);
INSERT INTO tb_colaboradores(nome, idade, cpf, cargo, salario)
values ("Caroline Gomes", 30, "3993142330", "dev pleno", 3500);
INSERT INTO tb_colaboradores(nome, idade, cpf, cargo, salario)
values ("Eduardo Brito Pereira", 20, "3333647860", "dev junior", 1445);
INSERT INTO tb_colaboradores(nome, idade, cpf, cargo, salario)
values ("Fernanda Ribeiro Cristina", 21, "3543673440", "dev junior", 1500);
INSERT INTO tb_colaboradores(nome, idade, cpf, cargo, salario)
values ("Maurício Soares do Santos", 33, "3345365567", "dev pleno", 2550);
INSERT INTO tb_colaboradores(nome, idade, cpf, cargo, salario)
values ("Cecília Galvão Lima", 29, "3094422901", "dev senior", 6000);
    
SELECT * FROM tb_colaboradores;

-- buscas especificas
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- apagar tabela
DROP TABLE tb_colaboradores;

-- atualizacoes
UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 4;

