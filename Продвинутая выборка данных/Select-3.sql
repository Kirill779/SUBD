--количество исполнителей в каждом жанре
select g.musical_genre, count(musical_artist)  from artistgenre a
right join genre g on a.musical_genre = g.id
group by g.musical_genre
--количество треков, вошедших в альбомы 2019-2020 годов
select year_of_release, count(name_track)  from album a
left join track t on  t.album_id = a.id
group by year_of_release
having year_of_release = 2019 or year_of_release = 2020 
order by count(name_track) 
--средняя продолжительность треков по каждому альбому
select album_id,name_album, count(*), avg(duration) from track t
left join album a on a.id = t.album_id
group by album_id, name_album
order by avg(duration)
--все исполнители, которые не выпустили альбомы в 2020 году
select musical_artist , year_of_release from albumartist a
left join artist art on art.id = a.name_artist
full join album alb on alb.id = a.title_album
where not year_of_release = 2020
--названия сборников, в которых присутствует конкретный исполнитель
select musical_artist,cos1.title from collection_of_song cos1 
join track_collection tc on tc.collection = cos1.id
join track t2 on t2.id = tc.track
join album alb on alb.id = t2.album_id 
join albumartist aa on aa.title_album = alb.id 
join artist art on art.id = aa.name_artist 
where musical_artist = 'Филипп Киркоров'
--название альбомов, в которых присутствуют исполнители более 1 жанра
select  name_album, a.musical_artist from album alb 
full join albumartist aa on aa.title_album  = alb.id 
full join  artist a on a.id = aa.name_artist  
full join  artistgenre ag on ag.musical_artist = a.id
group by name_album, a.musical_artist
having count(ag.musical_genre) > 1;
--Наименование треков, которые не входят в сборники 
select name_track  from track t
full join track_collection tc on t.id = tc.track
group by name_track, collection 
having  collection is null ;
--Исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько) 
select  musical_artist, min(duration)  from track t  
join album alb on t.album_id = alb.id 
join albumartist aa on aa.title_album  = alb.id 
join  artist a on a.id = aa.name_artist  
where duration = (select min(duration) from track t)
group by musical_artist;
-Название альбомов, содержащих наименьшее количество треков 
select  name_album, name_track from (select t.album_id, count(t.album_id) name_track from track t group by t.album_id) t
join album a on a.id = t.album_id 
group by name_album, name_track 
