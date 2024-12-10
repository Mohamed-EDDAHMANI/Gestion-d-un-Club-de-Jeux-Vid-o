




CREATE TABLE members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Pseudo VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Date_inscription DATE
);

CREATE TABLE abonnement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Type_Abonnement VARCHAR(255) NOT NULL,
    Date_debut DATE,
    Date_fin DATE,
    id_member INT NOT NULL,
    FOREIGN KEY (id_member) REFERENCES members(id)
);

CREATE TABLE jeux (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Titre VARCHAR(225),
    Studio_developpment VARCHAR(255),
    Annee_sortie YEAR,
    Genre VARCHAR(255),
    Multiple_joueur BOOLEAN
);

CREATE TABLE tournoi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nom_tournoi VARCHAR(255) NOT NULL,
    Date_tournoi DATE,
    Recompenses VARCHAR(255) NOT NULL,
    id_jeux INT NOT NULL,
    FOREIGN KEY (id_jeux) REFERENCES jeux(id)
);

CREATE TABLE participer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Score INT,
    Range_final INT,
    Date_jeux DATE,
    id_member INT NOT NULL,
    id_tournoi INT NOT NULL,
    FOREIGN KEY (id_member) REFERENCES members(id),
    FOREIGN KEY (id_tournoi) REFERENCES tournoi(id)
);

CREATE TABLE emprunter (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Date_emprunt DATE,
    Date_retour_prevue DATE,
    Date_retour_reelle DATE,
    id_member INT NOT NULL,
    id_jeux INT NOT NULL,
    FOREIGN KEY (id_jeux) REFERENCES jeux(id),
    FOREIGN KEY (id_member) REFERENCES members(id)
);


