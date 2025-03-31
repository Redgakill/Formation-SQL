USE netflix;

DROP TABLE IF EXISTS film; 
CREATE TABLE film( 
	id INT NOT NULL AUTO_INCREMENT,
    titre VARCHAR(50) NOT NULL,
    sortie VARCHAR(50) NOT NULL,
	categ_id int NOT NULL,
    CONSTRAINT pk_film PRIMARY KEY (id)
)ENGINE= InnoDB ;
 
 DROP TABLE IF EXISTS categ; 
CREATE TABLE categ(
	id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50),
	CONSTRAINT pk_categ PRIMARY KEY (id)
)ENGINE = InnoDB;

INSERT INTO categ (nom) VALUES
('Science fiction'), ('Thriller');

INSERT INTO film (titre, sortie, categ_id) VALUES
('STAR WARS', '1977-05-25', 1), 
('THE MATRIX', '1999-06-23' , 1),
('PULP FICTION', '1994-10-26', 2);

SELECT
film.titre AS titre,
film.sortie AS sortie,
categ.nom AS categorie
FROM film 
INNER JOIN categ
ON film.categ_id = categ.id