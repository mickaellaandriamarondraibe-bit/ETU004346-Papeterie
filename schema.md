## Étape 1

ARTICLE(**id_article**, article, categorie, prix) — (nouveau)

## Étape 2

CATEGORIE(**id_categorie**, nom) — (nouveau)
ARTICLE(**id_article**, article, prix, #id_categorie) — (modifié)

## Étape 3
CATEGORIE(**id_categorie**, nom)
ARTICLE(**id_article**, article, prix, #id_categorie)
VENTE(**id_vente**, date_vente) — (nouveau)
LIGNE_VENTE(**#id_vente**, **#id_article**, quantite) — (nouveau)