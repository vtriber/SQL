--название и год выхода альбомов, вышедших в 2018 году;
SELECT name, year FROM albums
WHERE year = 2018;


--название и продолжительность самого длительного трека;
SELECT name, duration FROM tracks
ORDER BY duration DESC
LIMIT  1;


--название треков, продолжительность которых не менее 3,5 минуты;
SELECT name FROM tracks
WHERE duration >= 3.5;


--названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT name FROM compilations
WHERE year BETWEEN 2018 AND 2020;


--исполнители, чье имя состоит из 1 слова;
SELECT name FROM performers
WHERE name NOT LIKE '% %';


--название треков, которые содержат слово "мой"/"my".
SELECT name FROM tracks
WHERE name LIKE '%мой%' or name LIKE '%my%' OR name LIKE '%Мой%';


--количество исполнителей в каждом жанре;
SELECT name, count(*) FROM genres g 
JOIN perf_gen pg  ON g.id = pg.genre_id
GROUP BY name
ORDER BY count(*) DESC;


--количество треков, вошедших в альбомы 2019-2020 годов;
SELECT a.name, count(*) FROM albums a 
JOIN tracks t  ON a.id = t.album_id 
WHERE year BETWEEN 2019 AND 2020
GROUP BY a.name
ORDER BY count(*) DESC;



--средняя продолжительность треков по каждому альбому;
SELECT a.name, avg(duration) FROM albums a  
JOIN tracks t  ON a.id = t.album_id 
GROUP BY a.name
ORDER BY avg(duration) desc;


--все исполнители, которые не выпустили альбомы в 2020 году;
SELECT p.name FROM performers p  
JOIN perf_album pa ON p.id = pa.performer_id
JOIN albums a  ON pa.album_id = a.id
WHERE not year = 2020;


--названия сборников, в которых присутствует конкретный исполнитель (Элаиза Фиджеральд);
SELECT c.name FROM compilations c 
JOIN track_compil tc ON c.id = tc.compilation_id 
JOIN tracks t ON t.id = tc.track_id 
JOIN albums a ON a.id = t.album_id 
JOIN perf_album pa ON a.id = pa.album_id 
JOIN performers p ON p.id = pa.performer_id 
WHERE p.name LIKE 'Элаиза Фиджеральд';


--название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.name FROM albums a
JOIN perf_album pa ON a.id = pa.album_id 
JOIN performers p ON p.id = pa.performer_id 
JOIN perf_gen pg ON p.id = pg.performer_id 
JOIN genres g ON g.id = pg.genre_id
GROUP BY a.name 
HAVING count(*) > 1; 


--наименование треков, которые не входят в сборники;
SELECT t.name FROM tracks t
LEFT JOIN track_compil tc ON t.id = tc.track_id
WHERE tc.compilation_id IS NULL;


--исполнителя(-ей), написавшего самый короткий по продолжительности трек;
SELECT p.name FROM performers p 
JOIN perf_album pa ON p.id = pa.performer_id
JOIN albums a  ON pa.album_id = a.id
JOIN tracks t ON a.id = t.album_id 
WHERE duration = (SELECT min(duration) FROM tracks t2);


--название альбомов, содержащих наименьшее количество треков.
SELECT a.name  FROM albums a 
JOIN tracks t ON a.id = t.album_id 
GROUP BY a.name 
HAVING count(*) = (SELECT count(*)  FROM albums a 
JOIN tracks t ON a.id = t.album_id 
GROUP BY a.name
ORDER BY count(*)
LIMIT 1);









