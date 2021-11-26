/* 	3 - Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
	informações dos estudantes deste registro dessa escola.
	Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
	relevantes dos estudantes para se trabalhar com o serviço dessa escola.
	-	Popule esta tabela com até 8 dados;
	-	Faça um select que retorne o/as estudantes com a nota maior do que 7.
	-	Faça um select que retorne o/as estudantes com a nota menor do que 7.
	Ao término atualize um dado desta tabela através de uma query de atualização.
	salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
	coloque no seu GitHuB pessoal e compartilhe esta atividade. */	
    
Create database db_escola;

Use db_escola;
Create table tb_estudantes(
id_estudante bigint(5) auto_increment,
nome varchar(20) not null,
idade int(2),
endereco varchar (40) not null,
notaFinal int(2),
primary key (id_estudante)
);

Select * from tb_estudantes;

INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Guilherme Moreira", 13, "Rua Vai Corinthians, 1910", 7);
INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Valkiria Melo", 14, "Rua Goitacazes, 154", 8);
INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Gregory Vasquez", 16, "Av. Vai Brasil, 123", 6);
INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Mark Hummel", 12, "Av. Avante Brasil, 1456", 5);
INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Francisca Mendes", 9, "Av. Atlântica, 693", 4);
INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Andrew Rogers", 14, "Travessa do Largo, 23", 5);
INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Cristiano Messinaldo", 18, "Largo da Batata, 13", 9);
INSERT INTO tb_estudantes(nome, idade, endereco, notaFinal) Value ("Joãozinho Mendes", 11, "Av. Braga Melo de Sousa", 9);

Select * from tb_estudantes;

Select * from tb_estudantes where notaFinal > 7;	/* Mostrando os alunos que possuem nota maior do que 7 */

Select * from tb_estudantes where notaFinal < 7;	/* Mostrando os alunos que possuem nota menor do que 7 */

Update tb_estudantes SET notaFinal = 6 where id_estudante = 5;	/* Alterando a nota final do aluno de id 5, para 6 */



