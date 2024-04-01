/* 2 задание */

SELECT name, time
FROM songs
WHERE time = (SELECT MAX(time) AS Max FROM Songs);

SELECT name
FROM songs
WHERE time >= 210;

SELECT name 
FROM collections 
WHERE year between 2018 and 2020;

SELECT name
FROM performers
WHERE name NOT LIKE '% %';

SELECT LOWER(name)
FROM songs
WHERE name LIKE '%Мой%' OR name LIKE '%My%'

/* 3 задание */

SELECT genre_id, COUNT(performer_id)
FROM genresperformers 
GROUP BY genre_id;

SELECT COUNT(songs.id)
FROM albums INNER JOIN songs ON albums.id = songs.id_album 
WHERE albums.year BETWEEN 2019 AND 2020;

SELECT albums.name, AVG(songs.time)
FROM albums INNER JOIN songs ON albums.id = songs.id_album 
GROUP BY albums.name;

SELECT pa.performer_id
FROM performersalbums pa INNER JOIN albums a ON pa.album_id = a.id
WHERE a.year < 2020;

SELECT c.name, p.name 
FROM collections c INNER JOIN songscollections sc ON c.id = sc.collection_id 
INNER JOIN songs s ON sc.song_id = s.id
INNER JOIN performersalbums pa ON pa.album_id  = s.id_album 
INNER JOIN performers p ON pa.performer_id = p.id /* этот join необязателен, можно было использовать performer_id = 2*/
WHERE p.name = 'Greasy';

/*4 задание */

SELECT t.name 
FROM (SELECT a.name, gp.performer_id, count(gp.genre_id) 
FROM albums a INNER JOIN performersalbums pa ON a.id = pa.album_id 
INNER JOIN genresperformers gp ON pa.performer_id = gp.performer_id 
GROUP BY a.name, gp.performer_id
HAVING count(gp.genre_id) >1) AS t

SELECT s.name
FROM songs s left join songscollections sc ON s.id = sc.song_id 
WHERE sc.collection_id is null

SELECT distinct pa.performer_id
FROM performersalbums pa INNER JOIN songs s ON pa.album_id = s.id_album 
WHERE s.time = (SELECT min(time) AS Min FROM Songs)

SELECT t.name 
FROM (
    SELECT a.name AS name, COUNT(s.id) AS c
    FROM albums a
    INNER JOIN songs s ON s.id_album = a.id 
    GROUP BY a.name
) AS t
WHERE t.c = (
    SELECT MIN(count_of_songs.c) 
    FROM (
        SELECT a.name, COUNT(s.id) AS c
        FROM albums a
        INNER JOIN songs s ON s.id_album = a.id 
        GROUP BY a.name
    ) AS count_of_songs
)




