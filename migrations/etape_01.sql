

CREATE TABLE article (
    id_article INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    article VARCHAR(100) NOT NULL,
    categorie VARCHAR(100) NOT NULL,
    prix NUMERIC(10, 2) NOT NULL CHECK (prix >= 0)
);

INSERT INTO article (article, categorie, prix) VALUES
    ('Cahier 100 pages', 'Cahiers', 1200.00),
    ('Cahier 200 pages', 'Cahiers', 2000.00),
    ('Stylo à bille bleu', 'Ecriture', 500.00),
    ('Crayon à papier', 'Ecriture', 300.00),
    ('Règle 30 cm', 'Géométrie', 800.00),
    ('Manuel Mathématiques CM2', 'Manuels scolaires', 15000.00),
    ('Cartable', 'Bagagerie', 35000.00);