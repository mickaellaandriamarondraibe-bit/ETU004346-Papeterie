CREATE TABLE vente (
    id_vente INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    date_vente TIMESTAMP NOT NULL
);

CREATE TABLE ligne_vente (
    id_vente INTEGER REFERENCES vente(id_vente),
    id_article INTEGER REFERENCES article(id_article),
    quantite INTEGER NOT NULL CHECK (quantite > 0),
    PRIMARY KEY (id_vente, id_article)
);

INSERT INTO vente (date_vente)
VALUES ('2026-10-21 10:30:00');

INSERT INTO ligne_vente (id_vente, id_article, quantite)
VALUES (1, 1, 3);