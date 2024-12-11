INSERT INTO members (Pseudo, Email, Date_inscription)
VALUES
('PlayerOne', 'player1@example.com', '2023-01-10'),
('GamerGirl', 'gamer_girl@example.com', '2023-02-15'),
('ProGamer', 'progamer@example.com', '2023-03-20'),
('CasualJoe', 'casualjoe@example.com', '2023-04-05');

INSERT INTO jeux (Titre, Studio_developpment, Annee_sortie, Genre, Multiple_joueur)
VALUES
('Legend Quest', 'Epic Games', 2020, 'Adventure', TRUE),
('Space Invaders X', 'Retro Studio', 2018, 'Arcade', FALSE),
('Battle Royale 3', 'FuturePlay', 2021, 'Action', TRUE),
('Puzzle Paradise', 'Brainy Studios', 2019, 'Puzzle', FALSE);

INSERT INTO tournoi (Nom_tournoi, Date_tournoi, Recompenses, id_jeux)
VALUES
('Winter Championship', '2023-12-20', 'Gold Trophy', 1),
('Arcade Masters', '2024-01-15', 'Exclusive T-shirt', 2),
('Battle of Legends', '2024-02-10', 'Cash Prize', 3),
('Puzzle King Contest', '2024-03-05', 'Gift Cards', 4);

INSERT INTO abonnement (Type_Abonnement, Date_debut, Date_fin, id_member)
VALUES
('Annuel', '2023-01-10', '2024-01-10', 1),
('Mensuel', '2023-12-01', '2023-12-31', 2),
('Annuel', '2023-03-01', '2024-03-01', 3),
('Mensuel', '2023-11-20', '2023-12-20', 4);

INSERT INTO participer (Score, Range_final, Date_jeux, id_member, id_tournoi)
VALUES
(1500, 1, '2023-12-20', 1, 1),
(1300, 2, '2023-12-20', 2, 1),
(900, 3, '2024-01-15', 3, 2),
(1200, 2, '2024-02-10', 1, 3),
(1400, 1, '2024-02-10', 3, 3);

INSERT INTO emprunter (Date_emprunt, Date_retour_prevue, Date_retour_reelle, id_member, id_jeux)
VALUES
('2023-12-01', '2023-12-10', NULL, 1, 1),
('2023-12-05', '2023-12-15', '2023-12-14', 2, 2),
('2023-12-08', '2023-12-18', NULL, 3, 3),
('2023-11-20', '2023-11-30', '2023-11-29', 4, 4),
('2023-12-10', '2023-12-20', NULL, 1, 3);
