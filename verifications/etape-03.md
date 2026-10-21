```sql 
    papeterie=# SELECT l.id_vente, SUM(a.prix * l.quantite) AS total
    FROM ligne_vente AS l
    JOIN article AS a ON l.id_article = a.id_article
    GROUP BY l.id_vente;
    
    id_vente |  total  
    ----------+---------
            1 | 3600.00
    (1 ligne)
```
