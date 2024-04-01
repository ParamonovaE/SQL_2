INSERT INTO Performers (name)
VALUES
('Tom'),
('Greasy'),
('Tee'),
('Honor'),
('Greg'),
('Go Go');

INSERT INTO Genres (name)
VALUES
('Pop'),
('Rock'),
('Hip-hop'),
('RnB');

INSERT INTO Albums (name, year)
VALUES
('Sea', '2000'),
('Great', '2001'),
('Holy', '2002'),
('Honest', '2003'),
('Honest part two', '2019'),
('Honest part three', '2020'),
('Belly', '2020');

INSERT INTO Songs (id_album, name, time) /*time в секундах */
VALUES
(1, 'Jolly', 180),
(3, 'Door', 195),
(4, 'Dear', 192),
(4, 'Hello', 134),
(2, 'Goodbye', 156),
(1, 'Мой сосед', 178),
(3, 'My human', 210),
(5, 'Good', 199),
(6, 'Bad', 173),
(7, 'Normal', 220),
(7, 'Normal 2', 221);


INSERT INTO Collections (name, year)
VALUES
('For you', 2006),
('For her', 2007),
('For him', 2008),
('Sad', 2009),
('Fun', 2010),
('Fun part two', 2018);

INSERT INTO GenresPerformers (genre_id, performer_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(3, 4),
(4, 3),
(4, 5),
(3, 6);

INSERT INTO PerformersAlbums (performer_id, album_id)
VALUES
(2, 1),
(2, 3),
(1, 2),
(3, 2),
(5, 4),
(4, 3),
(6, 2),
(5, 5),
(4, 6),
(6, 7);

INSERT INTO SongsCollections (collection_id, song_id)
VALUES
(1, 7),
(2, 7),
(3, 1),
(4, 2),
(5, 3),
(4, 4),
(3, 5),
(4, 6),
(5, 7),
(1, 1),
(6, 6).
(2, 8),
(4, 9),
(6, 10);