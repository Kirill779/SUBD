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
select distinct musical_artist from artist art
	where musical_artist not in (
		select distinct art.musical_artist from artist art
		left join albumartist aa on art.id = aa.name_artist
		left join album alb on alb.id = aa.title_album
		where alb.year_of_release = 2020
		)
	order by art.musical_artist;
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
select musical_artist, duration  from track t  
join album alb on t.album_id = alb.id 
join albumartist aa on aa.title_album  = alb.id 
join  artist a on a.id = aa.name_artist  
where duration = (select min(duration) from track t)
--Название альбомов, содержащих наименьшее количество треков 
select  name_album, track_num from (select t.album_id, count(t.album_id) track_num from track t group by t.album_id) t
join album alb on alb.id = t.album_id 
group by alb.name_album, t.track_num
having track_num = (select min(mycount) from (select album_id, count(album_id) mycount from track group by album_id) as mintrack);
