-- Домашнее задание по продвинутой выборке

-- 1.количество исполнителей в каждом жанре;
SELECT name, count(*)
FROM genre JOIN performer_genre
    ON performer_genre.genre_id = id
GROUP BY name;

-- 2.количество треков, вошедших в альбомы 2019-2020 годов;
SELECT title, count(*)
FROM album JOIN track
    ON album.id = track.album_id
WHERE album.YEAR BETWEEN 2018 AND 2020
GROUP BY title;

-- 3.средняя продолжительность треков по каждому альбому;
-- ошибочно введенные 5 часов длительности трека для песни о бактерии решил 
-- не исправлять, так как все равно этой песни и группы не существует
SELECT title, avg(duration)
FROM album JOIN track
    ON album.id = track.album_id
GROUP BY title;

-- 4.все исполнители, которые не выпустили альбомы в 2020 году;
-- никто не выпустил или я не добавил
SELECT performer.name -- , count(album.title)
    FROM performer JOIN performer_album
        ON performer.id = performer_id 
        JOIN album 
        ON album.id = album_id
    WHERE year <> 2020
GROUP BY performer.name;
            
            
-- 5.названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT compilation.title
FROM compilation 
    JOIN compilation_track
    ON compilation.id = compilation_track.compilation_id
    JOIN track
    ON track.id = compilation_track.track_id
    JOIN album
    ON album.id = track.album_id
    JOIN performer_album
    ON album.id = performer_album.album_id
    JOIN performer
    ON performer.id = performer_album.performer_id
    WHERE performer.name LIKE '%Archspire%'
GROUP BY compilation.title;

-- 6.название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT c_g.title, c_g.count_genre FROM 
    (SELECT album.title, count(genre.name) AS count_genre
    FROM album JOIN performer_album
        ON album.id = performer_album.album_id
        JOIN performer
        ON performer.id = performer_album.performer_id
        JOIN performer_genre
        ON performer.id = performer_genre.performer_id
        JOIN genre
        ON genre.id = performer_genre.genre_id
    GROUP BY album.title) AS c_g
WHERE count_genre > 1
LIMIT 6;

-- 7.наименование треков, которые не входят в сборники;
SELECT track."name" 
FROM track LEFT JOIN compilation_track ct
ON ct.track_id = track.id
WHERE ct.track_id IS NULL
LIMIT 7;

-- 8.исполнителя(-ей), написавшего самый короткий по продолжительности трек 
-- (теоретически таких треков может быть несколько);
SELECT performer.name, album.title, track.name, track.duration
FROM performer JOIN performer_album
ON performer.id = performer_album.performer_id 
JOIN album
ON album.id = performer_album.album_id
JOIN track
ON track.album_id = album.id
WHERE track.duration = (SELECT min(track.duration) FROM track);


-- 9.название альбомов, содержащих наименьшее количество треков.
SELECT album.title, count(track.name) AS count_tracks
FROM album JOIN track 
ON album.id = track.album_id
GROUP BY album.title
ORDER BY count_tracks
LIMIT 9;