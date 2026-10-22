```sql
papeterie=# SELECT v.id_vente,
       v.date_vente,
       COALESCE(c.nom, 'client de passage') AS nom_client
FROM vente AS v
LEFT JOIN client AS c ON v.id_client = c.id_client
ORDER BY v.id_vente;
 id_vente |     date_vente      |    nom_client     
----------+---------------------+-------------------
        1 | 2026-10-21 10:30:00 | client de passage
        2 | 2026-10-22 09:00:00 | Rakoto Hanta
        3 | 2026-10-22 09:30:00 | client de passage
        4 | 2026-10-22 10:00:00 | École Les Lilas
        5 | 2026-10-22 10:30:00 | client de passage
        6 | 2026-10-22 11:30:00 | Rakoto Hanta

```