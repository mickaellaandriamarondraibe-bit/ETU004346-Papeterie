Etape-01 : 
    - Pour le prix j'ai choisi quand meme en decimal car c'est plus precis et plus facile pour les calculs.(comme ca meme si la personne met un entier, il sera converti en decimal il y aura pas d'erreur )
    - Pour l'identifiant , j'ai chosie un numero soit (type int) car c'est plus facile pour les calculs et pour les recherches, et aussi pour l'indexation.


Etape 02 : 
    -Avec du texte libre, « cahier » et « cahiers » peuvent devenir deux rayons différents. Une table de catégories évite ce problème.
    
Etape 03 :
    - J'ai placé la quantité dans la table ligne_vente car elle est specifique à chaque article vendu dans une vente. 
    - Il ne faut pas appeler la colonne date_vente dans ligne_vente car , il y aura des repetition de date a chaque fois que nous ajoutons un article dans une vente. Donc il faut la mettre dans la table vente pour eviter les repetitions.