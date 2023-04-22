-- criar banco de dados
CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    descricao varchar(255) not null,
    desbloqueado boolean not null,
    primary key(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar(255) not null,
    nivel int not null,
    ataque_poder int not null,
    defesa_poder int not null,
    classes_id bigint not null,
    primary key(id),
    constraint fk_classes FOREIGN KEY(classes_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes(descricao, desbloqueado) VALUES ("assasino", true);
INSERT INTO tb_classes(descricao, desbloqueado) VALUES ("atirador", true);
INSERT INTO tb_classes(descricao, desbloqueado) VALUES ("suporte", true);
INSERT INTO tb_classes(descricao, desbloqueado) VALUES ("tanque", true);
INSERT INTO tb_classes(descricao, desbloqueado) VALUES ("mago", true);
INSERT INTO tb_classes(descricao, desbloqueado) VALUES ("únicos", false);

UPDATE tb_classes SET descricao = "lendário" WHERE id = 6;

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Soffia", 50, 6500, 4000, 5);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Pedrial", 50, 7400, 4010, 2);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Bellat", 50, 8555, 5000, 1);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Maciel", 50, 1855, 8000, 3);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Juna", 50, 5025, 9320, 4);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Luca", 50, 8500, 5100, 1);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Anne", 50, 5644, 5444, 5);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Juriel", 50, 1900, 7800, 3);
INSERT INTO tb_personagens(nome, nivel, ataque_poder, defesa_poder, classes_id) VALUES ("Orick", 100, 10000, 10000, 6);

SELECT * FROM tb_personagens;

UPDATE tb_personagens SET nome = "Ciras" WHERE id = 10;

-- buscas especificas 

SELECT * FROM tb_personagens WHERE ataque_poder > 2000;
SELECT * FROM tb_personagens WHERE defesa_poder BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";
SELECT nome, nivel, ataque_poder, defesa_poder FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id;
SELECT nome, nivel, ataque_poder, defesa_poder FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.id WHERE tb_personagens.classes_id = 3;