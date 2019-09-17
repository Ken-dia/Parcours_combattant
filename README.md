# Parcours_combattant
GESTION DES
RÉSULTATS AU PARCOURS DU COMBATTANT  

Une caserne militaire désire gérer les résultats des soldats
lors du passage des obstacles du parcours du combattant. Dans sa carrière, un
soldat va passer plusieurs fois le parcours du combattant. A chaque fois qu’un
soldat passe un obstacle, un instructeur lui attribue une note (note
instructeur). Si le parcours comporte 20 obstacles, l’élève recevra donc 20
notes (si l’élève ne passe pas l’obstacle, la note 0 lui est attribuée). A
chaque obstacle est attribué un niveau de difficulté. (facile, moyen, difficile
…). Un bonus de points est ensuite attribué à chaque niveau (ex : bonus de 2
points pour les obstacles difficiles). La note finale pour le passage d’un
obstacle est donc égale à : note attribuée par l’instructeur + bonus relatif à
la difficulté de l’obstacle. Enfin, une note minimale à obtenir est définie
pour chaque obstacle. Elle définit un niveau minimum à atteindre qui permet de
dire à un soldat sur quels obstacles il doit axer en priorité son entraînement.
Exemple : soit l’obstacle « Fosse » de niveau « difficile » (le bonus attribué
pour ce niveau est de 2 points). La note minimale à atteindre pour cet obstacle
est de 10. Si un élève est noté 6 sur cet obstacle par l’instructeur, sa note
finale sera égale à 6 + 2 = 8. On juge donc que son niveau sur cet obstacle est
insuffisant et qu’il lui faut parfaire son entraînement. Les responsables de la
caserne souhaitent obtenir la liste de tous les obstacles ainsi que leur niveau
de difficulté.  

Pour chaque soldat on veut connaître son matricule, son nom,
son email, son grade.  

Pour chaque obstacle on veut connaître le nom, son niveau de
difficulté, son bonus, la note minimale pour cette obstacle. 

Pour chaque passage d’obstacle on veut connaître le soldat qui
passe l’obstacle, l’obstacle à passer, la date de passage, le soldat
instructeur qui examine le soldat, le temps de passage, la note attribué par
l’instructeur, la note finale (elle vaut 0 si la note attribuée par
l’instructeur ajoutée au bonus de l’obstacle est inférieur à la note minimale
de l’obstacle). 

TAF 

1. Etablir
le modèle entité association 

2. Etablir
le modèle logique des données 

3. Créer
la base de données, les tables et les relations sous mysql 

4. A
l’aide du langage SQL afficher les informations suivantes 

  

Afficher les soldats qui ont passé un parcours donné (*) 

Afficher les obstacles d’un parcours (*) 

Afficher les soldats avec leurs moyennes pour un poarcours
(nom soldat, prénom, matricule, moyenne) 

Afficher un soldat avec ses notes d’un parcours 

Afficher les soldats qui ont réussi un parcours donné 

Afficher les soldats qui ont réussi au moins 10 obstacles 

Afficher les soldats qui ont réussi tous les obstacles 

Afficher les soldats qui n’ont réussi aucun obstacle 

Afficher les instructeurs ayant examiné des soldats pour un
parcours donné 

Pour chaque instructeur afficher le nombre de soldats
examinés dans un parcours 

Pour chaque parcours afficher le nombre de soldats ayant
participés 
