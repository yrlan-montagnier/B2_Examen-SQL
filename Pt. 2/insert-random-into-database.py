import sqlite3
from faker import Faker
from datetime import datetime
import random

faker = Faker('fr-FR')

try: 
    # Connexion à la DB
    conn = sqlite3.connect('tp_final.sqlite')
    c = conn.cursor()
    print("Connexion réussie à la base de donnée")

    # Boucle pour génerer 10 entrées
    for _ in range(10):
        # Variables clients
        FirstName = faker.first_name()
        LastName = faker.last_name()
        Mail = FirstName + '.' + LastName + "@gmail.com"
        Phone = faker.unique.phone_number()

        # Variables chambres
        NbLits = faker.random_digit()
        NbPlaces = NbLits*2
        RoomPriceByNight = NbPlaces*10

        # Variables dates
        DateArrivée = faker.date_between_dates(date_start=datetime(2021,10,15), date_end=datetime(2021,10,31))
        DateDépart = faker.date_between_dates(date_start=datetime(2021,11,1), date_end=datetime(2021,11,15))

        # Variables menus
        list1 = ["Salade", "Carottes rapées", "Tomates"]
        MenuEntrée = random.choice(list1)
        #MenuPlat = faker.Food.description()
        #MenuDessert = faker.Food.description()

        # Insertion des entrées dans la base de donées
        c.execute("INSERT INTO Clients(Prenom, Nom, Mail, Telephone) VALUES ('{}', '{}', '{}', '{}')".format(FirstName, LastName, Mail, Phone))
        conn.commit()

        c.execute("INSERT INTO Chambres(Lits, Personnes, Prix) VALUES ('{}', '{}', '{}')".format(NbLits, NbPlaces, RoomPriceByNight))
        conn.commit()

        c.execute("INSERT INTO Reservations(DateArrivee, DateDepart) VALUES ('{}', '{}')".format(DateArrivée, DateDépart))
        conn.commit()

        c.execute("INSERT INTO Menus(Entrée, Plat, Dessert) VALUES ('{}', '{}', '{}')".format(MenuEntrée, "MenuPlat", "MenuDessert"))
        conn.commit()

    # Affichage d'un message dans la console pour confirmer l'insertion des données à la DB
    print("Les valeurs ont été intégrées à la base de données")

# Affichage d'un message d'erreur dans la console si un INSERT a raté
except sqlite3.Error as error:
    print("Erreur lors de l'insertion dans la base de donées : ", error);