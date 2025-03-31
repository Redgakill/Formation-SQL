DROP DATABASE IF EXISTS prime_vdo;
CREATE DATABASE prime_vdo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE prime_vdo;

CREATE TABLE film (
  id INT  NOT NULL AUTO_INCREMENT,
  nom VARCHAR(100) NOT NULL,
  CONSTRAINT pk_film PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE acteur (
  id INT NOT NULL AUTO_INCREMENT,
  prenom VARCHAR(100) NOT NULL,
  nom VARCHAR(100) NOT NULL,
   CONSTRAINT pk_acteur PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE film_has_acteur (
  film_id INT NOT NULL,
  acteur_id INT NOT NULL,
  CONSTRAINT pk_film_has_acteur PRIMARY KEY (film_id, acteur_id)
)ENGINE=INNODB;

ALTER TABLE film_has_acteur ADD CONSTRAINT fk_acteur FOREIGN KEY (acteur_id) REFERENCES acteur (id);
ALTER TABLE film_has_acteur ADD CONSTRAINT fk_film FOREIGN KEY (film_id) REFERENCES film (id);

##############
## Les données
##############

INSERT INTO acteur (id, prenom, nom) VALUES
(1, 'Brad', 'PITT'),
(2, 'Léonardo', 'Dicaprio'),
(3, 'TOM', 'CRUISE');

INSERT INTO film (id, nom) VALUES
(1, 'Fight Club'),
(2, 'Once Upon a time in Hollywood'),
(3, 'TITANIC');

INSERT INTO film_has_acteur 
(film_id, acteur_id) 
VALUES 
('1', '1'), 
('2', '1'), 
('2', '2'),
('3', '2');

#SELECT 
#film.nom AS film, 
#acteur.prenom AS acteur_prenom,
#acteur.nom AS acteur_nom
#FROM film 
#JOIN film_has_acteur ON film.id = film_has_acteur.film_id
#JOIN acteur ON film_has_acteur.acteur_id = acteur.id
#WHERE acteur.prenom = 'Brad' AND acteur.nom = 'PITT';

#SELECT
#acteur.prenom AS acteur_prenom,
#acteur.nom AS acteur_nom,
#COUNT(film_has_acteur.film_id) AS nb_films
#FROM acteur
#JOIN film_has_acteur ON acteur.id = film_has_acteur.acteur_id
#GROUP BY acteur_id


#SELECT 
#film.nom
#FROM film
#LEFT JOIN film_has_acteur ON film.id = film_has_acteur.film_id
#WHERE film_has_acteur.acteur_id is NULL

#SELECT 
#film.nom,
#acteur.prenom,
#acteur.nom
#FROM film
#JOIN film_has_acteur ON film.id = film_has_acteur.film_id
#JOIN acteur ON film_has_acteur.acteur_id = acteur.id
#ORDER BY film.nom;

#SELECT
#acteur.prenom,
#acteur.nom,
#COUNT(film_has_acteur.film_id) AS nb_films
#FROM acteur
#LEFT JOIN film_has_acteur ON acteur.id = film_has_acteur.acteur_id
#GROUP BY acteur.id

#SELECT
#acteur.prenom,
#acteur.nom,
#COUNT(film_has_acteur.film_id ) nb_films 
#FROM acteur
#LEFT JOIN film_has_acteur ON acteur.id = film_has_acteur.acteur_id
#GROUP BY acteur.id
#HAVING COUNT(film_has_acteur.film_id ) >= 2

#SELECT AVG(nb_acteurs) AS acteur_par_film
#FROM (
#    SELECT COUNT(film_has_acteur.acteur_id) AS nb_acteurs
#    FROM film 
#    LEFT JOIN film_has_acteur ON film.id = film_has_acteur.film_id
#    GROUP BY film.id
#) AS sous_requete;

