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
    prenom VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    CONSTRAINT pk_client PRIMARY KEY (id)
) ENGINE = Innodb;

CREATE TABLE commande (
    id INT NOT NULL AUTO_INCREMENT,
    client_id INT,
    date_achat DATETIME,
    CONSTRAINT pk_commande PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES client(id)
) ENGINE = Innodb;

CREATE TABLE commande_article (
    id INT NOT NULL AUTO_INCREMENT,
    commande_id INT,
    article_id INT,
    nb INT,
    prix_unitaire INT,
    total DECIMAL(10,2),
	CONSTRAINT pk_commande_article PRIMARY KEY (id),
    FOREIGN KEY (commande_id) REFERENCES commande(id),
    FOREIGN KEY (article_id) REFERENCES article(id)
) ENGINE = Innodb;

INSERT INTO article(id, nom, prix) VALUES
(1 ,'PlayStation 5', 400),
(2 ,'X box', 350),
(3 ,'Machine à café', 300),
(4 ,'PlayStation 3', 100);

INSERT INTO client(id, prenom, nom) VALUES
(1, 'Brad' , 'PITT'),
(2, 'George', 'CLOONEY'),
(3, 'Jean', 'DUJARDIN');

INSERT INTO commande (id, client_id, date_achat) VALUES
(1, 1, '2024-09-08 10:15:00');

INSERT INTO commande_article (commande_id, article_id, nb, prix_unitaire, total) VALUES
(1, 2, 1, 350.00, 350.00),  
(1, 3, 1, 300.00, 300.00),  
(1, 4, 2, 100.00, 200.00);  

-- 4 --
SELECT 
    client.nom AS nom, 
    client.prenom AS prenom, 
    commande.date_achat, 
    article.nom AS article, 
    commande_article.prix_unitaire AS prix, 
    commande_article.nb, 
    commande_article.total
FROM commande 
JOIN client ON commande.client_id = client.id
JOIN commande_article ON commande.id = commande_article.commande_id
JOIN article  ON commande_article.article_id = article.id
WHERE client.nom = 'PITT' AND client.prenom = 'Brad';