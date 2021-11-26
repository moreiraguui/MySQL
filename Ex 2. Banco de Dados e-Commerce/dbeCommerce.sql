/* 	2 - Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
	Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-	Popule esta tabela com até 8 dados;
-	Faça um select que retorne os produtos com o valor maior do que 500.
-	Faça um select que retorne os produtos com o valor menor do que 500.
-	Ao término atualize um dado desta tabela através de uma query de atualização.
	Salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
	coloque no seu GitHuB pessoal e compartilhe esta atividade. */

Create database db_ecommerce;     /* Criando o banco de dados */

use db_ecommerce;
Create table tb_produto( 				/* Criando a tabela */
id_produto bigint auto_increment,
nome varchar(30) not null,
tipo varchar(30) not null,
preco decimal (10,2),
disponivelEstoque boolean,
primary key (id_produto) 
);

Select * from tb_produto;

Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Camiseta", "Vestuario", 89.99, true);
Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Celular", "Eletronico", 759.99, true);
Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Sapato", "Vestuario", 101.69, false);
Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Bone", "Vestuario", 15.99, true);
Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Geladeira", "Eletrodomestico", 1699.99, true);
Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Arroz", "Alimento", 15.99, false);
Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Blusa Gucci", "Vestuario", 3999.99, true);
Insert into tb_produto(nome, tipo, preco, disponivelEstoque) Values ("Mouse", "Eletronico", 199.99, true);

Select * from tb_produto where preco > 500;  /* Mostrando produtos com valor maior do que 500. */

Select * from tb_produto where preco < 500;  /* Mostrando produtos com valor menor do que 500. */

Update tb_produto SET preco = 4500.00 where id_produto = 7; /* Atualizando o preço do produto de id 7 */

Select * from tb_produto;