/* 	1 - Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
	trabalhará com as informações dos funcionaries desta empresa.
	Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
	atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
	-	Popule esta tabela com até 5 dados;
	-	Faça um select que retorne os funcionaries com o salário maior do que 2000.
	-	Faça um select que retorne os funcionaries com o salário menor do que 2000.
	Ao término atualize um dado desta tabela através de uma query de atualização.
	salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
	coloque no seu GitHuB pessoal e compartilhe esta atividade. */
    
    Create database db_rh; 		/* Criando o banco de dados do RH */
    
    Use db_rh;
    Create table tb_funcionarios(		/* Criando a tabela de funcionários */
    id_funcionario bigint auto_increment,
    nome varchar (30) not null,
    idade int (2),
    cargo varchar(30) not null,
    salario decimal (6, 2),
    possuiExperiencia boolean,
	primary key (id_funcionario)
    );
    
    Select * from tb_funcionarios;
    
    Insert into tb_funcionarios(nome, idade, cargo, salario, possuiExperiencia) Values ("Guilherme Moreira", 23, "Desenvolvedor Full Stack Sr.", 9000.00, true);
	Insert into tb_funcionarios(nome, idade, cargo, salario, possuiExperiencia) Values ("Josenildo Braga", 45, "Desenvolvedor PHP Sr.", 6500.00, true);
    Insert into tb_funcionarios(nome, idade, cargo, salario, possuiExperiencia) Values ("Valdonice Melo", 34, "Analista QA Jr.", 1999.00, true);
    Insert into tb_funcionarios(nome, idade, cargo, salario, possuiExperiencia) Values ("Michael Jackson", 19, "Estagiário de Desenvolvimento", 1357.68, false);
    Insert into tb_funcionarios(nome, idade, cargo, salario, possuiExperiencia) Values ("Joselita Falcão", 21, "Estagiária em TI", 1800.00, false);
    
	Select * from tb_funcionarios;
    
    Select * from tb_funcionarios where salario > 2000; /* Mostrando salarios com valor maior do que 2000. */
	
    Select * from tb_funcionarios where salario < 2000; /* Mostrando salarios com valor menor do que 2000. */
    
    Update tb_funcionarios SET idade = 28 where id_funcionario = 4; /* Atualizando a idade do funcionario de id 5 */
    
    Select * from tb_funcionarios;
