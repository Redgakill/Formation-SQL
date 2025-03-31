#Création de base de donnée
DROP DATABASE if EXISTS invitation; 
CREATE DATABASE invitation CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE invitation;
DROP TABLE if EXISTS inv_personne; 
CREATE TABLE inv_personne(
	id INT NOT NULL AUTO_INCREMENT,
	prenom VARCHAR(100) NOT NULL,
	nom VARCHAR(100) NOT NULL, 
    age INT NOT NULL,
    inscription DATE NOT NULL,
    etat ENUM( '0', '1' ),
    statut ENUM ('non membre', 'membre'),
    cv VARCHAR(100) NOT NULL,
    salaire INT NOT NULL,
    CONSTRAINT pk_personne PRIMARY KEY (id)
) ENGINE= InnoDB ;

#Remplissage du tableau

INSERT INTO inv_personne (prenom, nom, age, inscription, etat, statut, cv, salaire) VALUE
('Brad', 'PITT', '60', '1970-01-01', '1', 'non membre', 'lorem ipsum', '2000000'),
('George', 'CLOONEY', '62', '1999-01-01', '1', 'membre', 'juste beau', '4000000'),
('Jean', 'DUJARDIN', '51', '1994-01-01', '0', 'membre', 'brice de nice', '1000000');

#Selection de differente donnée dans le tableau
 
#SELECT * from inv_personne;
#SELECT MAX(salaire) AS LEMAX FROM inv_personne;
#SELECT MIN(salaire) AS LEPITI FROM inv_personne;
#SELECT nom, salaire FROM inv_personne ORDER BY salaire LIMIT 1
#SELECT nom, salaire FROM inv_personne ORDER BY salaire DESC LIMIT 1
#SELECT AVG(salaire) FROM inv_personne
#SELECT COUNT(*) FROM inv_personne
#SELECT * FROM inv_personne WHERE salaire BETWEEN '1000000' AND '4000000'
#SELECT UPPER(prenom) FROM inv_personne
#SELECT LOWER(nom) FROM inv_personne
#SELECT * FROM inv_personne WHERE prenom LIKE '%bra%'
#SELECT * FROM inv_personne ORDER BY age
#SELECT COUNT(*) FROM inv_personne WHERE statut = 'membre'
#SELECT COUNT(*) FROM inv_personne GROUP BY statut