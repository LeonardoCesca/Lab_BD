CREATE TABLE Filmes
(
 titulo VARCHAR(250),
 ano NUMBER(4),
 diretor VARCHAR(100),
 genero VARCHAR(20),
 atoresPrincipais VARCHAR(1000),
 duracao NUMBER(4), -- em minutos
 valorIngresso NUMBER(5,2)
); 


INSERT INTO Filmes VALUES('The Fast And The Furious', 2001, 'Rob Cohen', 'Action','Paul Walker, Vin Diesel', 106, 15.90); 
INSERT INTO Filmes VALUES('2 Fast 2 Furious', 2003, 'John Singleton', 'Action','Paul Walker, Vin Diesel', 107, 14.80); 
INSERT INTO Filmes VALUES('The Fast And The Furious: Tokyo Drift', 2006, 'Justin Lin', 'Action','Lucas Black, Nathalie Kelley, Shad Moss, Sung Kang', 104, 19.00); 
INSERT INTO Filmes VALUES('Fast And Furious', 2009, 'Justin Lin', 'Action','Paul Walker, Vin Diesel', 107, 10.50); 
INSERT INTO Filmes VALUES('Fast Five', 2011, 'Justin Lin', 'Action','Paul Walker, Vin Diesel', 131, 17.15); 
INSERT INTO Filmes VALUES('Furious 6', 2013, 'Justin Lin', 'Action','Paul Walker, Vin Diesel', 130, 15.90); 
INSERT INTO Filmes VALUES('Furious Seven', 2015, 'James Wan', 'Action','Paul Walker, Vin Diesel', 137, 9.00);

SELECT TITULO, ANO, DIRETOR FROM FILMES;

SELECT TITULO FROM FILMES WHERE GENERO = 'Action' AND ANO = 2011;

SELECT TITULO, ANO FROM FILMES WHERE DURACAO > 120;

SELECT TITULO, DURACAO FROM FILMES WHERE GENERO = 'Action' AND ANO = 2015 AND DURACAO>=80;

SELECT TITULO, GENERO, VALORINGRESSO*1863 FROM FILMES WHERE ANO >= 2006;

SELECT COUNT(*) FROM FILMES WHERE VALORINGRESSO > 20;

SELECT DISTINCT DIRETOR FROM FILMES ORDER BY DIRETOR;