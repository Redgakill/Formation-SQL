USE zoo;
DROP TABLE if EXISTS chat; 
CREATE TABLE chat(
	id INT NOT NULL AUTO_INCREMENT,
	nom VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    couleur_id INT NULL,
    CONSTRAINT pk_chat PRIMARY KEY (id)
) ENGINE= InnoDB ;

#Remplissage du tableau

INSERT INTO chat (nom, age, couleur_id) VALUES
('Maine coon', '20', 1),
('Siamois', '15', 1),
('Bengal', '18', 2,
('Scottish Fold', '10',1),
('domestiques','21', NULL);

#Mettre en lien 2 table

SELECT
chat.id AS id,
chat.nom AS nom,
couleurs.nom AS yeux,
chat.age AS age
FROM chat
INNER JOIN couleurs
ON chat.couleur_id = couleurs.id

#Selection de differente donnée dans le tableau
 
#SELECT * from chat ORDER BY  nom; 
#SELECT * from chat ORDER BY  age;
#SELECT * from chat WHERE age > 11 AND age < 19;
#SELECT * from chat WHERE nom LIKE '%Sia%';
#SELECT * from chat WHERE nom LIKE '%a%';
#SELECT AVG(age) FROM chat;
#SELECT COUNT(*) FROM chat;
#SELECT COUNT(*) FROM chat WHERE yeux = 'marron';
#SELECT * FROM chat ORDER BY age LIMIT 1;
#SELECT * FROM chat ORDER BY age DESC LIMIT 1;
#SELECT COUNT(*) FROM chat GROUP BY yeux;
