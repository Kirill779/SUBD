-- название и год выхода альбомов, вышедших в 2018 году
select name_album,year_of_release  from album
where year_of_release = 2018;
название и продолжительность самого длительного трека;--
select duration ,title  from track
where duration = (select max(duration)from track);
--название треков, продолжительность которых не менее 3,5 минуты 
select duration ,title  from track
where duration < '3:30';
-- названия сборников, вышедших в период с 2018 по 2020 год включительно; 
select title from collection_of_song cos2 
where year_of_release between 2018 and 2020 ;
--исполнители, чье имя состоит из 1 слова;
select musical_artist from artist 
where musical_artist not like '% %';
--название треков, которые содержат слово "мой"/"my"
select title from track 
where title like 'Мой%' or title like 'My%';