```sql
    papeterie=# SELECT c.nom, COUNT(a.id_article) AS nombre_articles
    FROM categorie c
    LEFT JOIN article a ON a.id_categorie = c.id_categorie
    GROUP BY c.id_categorie, c.nom;
    
            nom        | nombre_articles 
    -------------------+-----------------
    Cahiers           |               2
    Bagagerie         |               1
    Géométrie         |               1
    Manuels scolaires |               1
    Ecriture          |               2
    (5 lignes)
```
