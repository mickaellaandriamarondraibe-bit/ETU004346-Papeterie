CREATE TABLE type_client (
    id_type_client INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE client (
    id_client INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    id_type_client INTEGER REFERENCES type_client(id_type_client)
);

ALTER TABLE vente
ADD COLUMN id_client INTEGER REFERENCES client(id_client);


INSERT INTO type_client (libelle)
VALUES ('Parent'), ('Élève'), ('École');

INSERT INTO client (nom, id_type_client)
VALUES ('Rakoto Hanta', 1),
       ('École Les Lilas', 3);

INSERT INTO vente (date_vente, id_client)
VALUES
    ('2026-10-22 09:00:00', 1),
    ('2026-10-22 09:30:00', NULL),
    ('2026-10-22 10:00:00', 2),
    ('2026-10-22 10:30:00', NULL),
    ('2026-10-22 11:30:00', 1);