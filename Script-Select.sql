-- SELECT

-- 1.название и год выхода альбомов, вышедших в 2018 году;
SELECT title, year FROM album WHERE YEAR = 2018;

-- 2.название и продолжительность самого длительного трека;
SELECT name, duration FROM track ORDER BY duration DESC LIMIT 5; -- 1;

-- 3.название треков, продолжительность которых не менее 3,5 минуты;
SELECT name, duration FROM track WHERE duration >= '00:03:30' ORDER BY duration;

-- 4.названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT title, year FROM compilation WHERE year BETWEEN 2018 AND 2020;

-- 5.исполнители, чье имя состоит из 1 слова;
SELECT name FROM performer WHERE name NOT LIKE '% %' AND name NOT LIKE '%-%' LIMIT 5;

-- 6.название треков, которые содержат слово "мой"/"my".
SELECT name
FROM track
WHERE name LIKE '%My%' OR name LIKE '%Мой %' OR name LIKE '%my%' OR name LIKE '%мой %'
LIMIT 6;