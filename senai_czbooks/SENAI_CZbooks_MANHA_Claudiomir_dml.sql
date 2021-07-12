USE SENAI_CZbooks_MANHA;

INSERT INTO Livros( NomeLivros)
values               ('As Cronicas de Gelo e Fogo')
					,('A F�ria dos Reis')
					,('O Ladr�o de Raios')
					,('Jogos Vorazes');


INSERT INTO Categorias(IdLivros,NomeHabilidade )
values				(1,'Lan�a Mortal')
					,(3,'Recuperar Vida')
					,(2,'Escudo Supremo');



INSERT INTO Classe(NomeClasse )
values               ('Barbaro')
					,('Cruzado')
					,('Ca�adora de Demonios')
					,('Monge')
					,('Necromante')
					,('Feiticeiro')
					,('Arcanista');

INSERT INTO ClasseHabilidade(IdClasse,IdHabilidade )
values               (1,1)
					,(1,3)
					 ,(2,3)
					,(3,1)
					 ,(4,2)
					,(4,3)
					,(6,2);

INSERT INTO ClasseHabilidade(IdClasse )
values   
						 (5)
						,(7);

INSERT INTO Personagens(IdClasse,NomePersonagem,CapacidadeMAXVida,CapacidadeMAXMana,DataAtualizacao,DataCriacao)
VALUES              ( 1,'DeuBug','100','80','01/03/2021','18/01/2019')
					,(4,'BitBug','70','100','01/03/2021','17/03/2016')
					,(7,'Fer8','75','60','01/03/2021','18/03/2018');



--Atualizar o nome do personagem Fer8 para Fer7;
UPDATE Personagens
SET NomePersonagem= 'Fer7'
WHERE IdPersonagem= 3;

--Atualizar o nome da classe de Necromante para Necromancer;
UPDATE Classe
SET NomeClasse='Necromancer'
WHERE IdClasse= 5;