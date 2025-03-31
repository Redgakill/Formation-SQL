DROP DATABASE IF EXISTS commerce;
CREATE DATABASE commerce CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE commerce;

CREATE TABLE article(
	id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
	prix INT NOT NULL,
	CONSTRAINT pk_article PRIMARY KEY (id)
) ENGINE = Innodb;

CREATE TABLE client(
	id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    CONSTRAINT pk_client PRIMARY KEY (id)
) ENGINE = Innodb;

CREATE TABLE commande (
    id INT NOT NULL AUTO_INCREMENT,
    client_id INT,
    date_achat DATETIME,
    CONSTRAINT pk_commande PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES client(id)
);

CREATE TABLE commande_article (
    id INT NOT NULL AUTO_INCREMENT,
    commande_id INT,
    article_id INT,
    nb INT,
    total DECIMAL(10,2),
	CONSTRAINT pk_commande_article PRIMARY KEY (id),
    FOREIGN KEY (commande_id) REFERENCES commande(id),
    FOREIGN KEY (article_id) REFERENCES article(id)
);

INSERT INTO article(id, nom, prix) VALUES
(1 ,'PlayStation 5', 400),
(2 ,'X box', 350),
(3 ,'Machine à café', 300),
(4 ,'PlayStation 3', 100);

INSERT INTO clients(id, nom, prenom) VALUES
(1, 'Brad' , 'PITT'),
(2, 'George', 'CLOONEY'),
(3, 'Jean', 'DUJARDIN');

