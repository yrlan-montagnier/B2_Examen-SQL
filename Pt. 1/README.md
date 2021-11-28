# Partie 1 : Conception d'une base de données

Pour la base de donnée de l'hôtel, j'ai crée 4 tables.

## Table `Clients`
J'ai crée une première table pour les clients qui contiendront leurs informations, et un lien vers l'ID de réservation

## Table `Chambres`
Ensuite j'ai fais une tables chambres pour les informations concernant les chambres de l'hôtel, où y sera indiquée leur prix, le nombre de lit ainsi que le nombre de places avec une colonne pour l'ID de réservation.

## Table `Reservations`
Dans la table réservations, on a un ID  pour chaque réservation, on a l'ID du client ainsi que la chambre correspondante grâce à des FOREIGN KEY, cette table nous permet de mettre en relation le client avec sa chambre ainsi que les infos de réservation, on y notera aussi la date de début de séjour ainsi que la date de départ.

## Table `Menus`
Puis dans cette dernière table, on aura les différents repas proposés, liés avec l'ID du client en fonction de ce qu'ils ont choisi.