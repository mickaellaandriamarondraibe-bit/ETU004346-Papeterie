CREATE TABLE categorie (
    id_categorie INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

INSERT INTO categorie (nom)
SELECT DISTINCT categorie FROM article;

ALTER TABLE article
ADD COLUMN id_categorie INTEGER REFERENCES categorie(id_categorie);

UPDATE article a
SET id_categorie = c.id_categorie
FROM categorie c
WHERE a.categorie = c.nom;

ALTER TABLE article
ALTER COLUMN id_categorie SET NOT NULL;

ALTER TABLE article DROP COLUMN categorie;