-- добавляем новый жанр
insert into genre (id,musical_genre)
values (1,'Попса');
insert into genre (id,musical_genre)
values (2,'Опера');
insert into genre (id,musical_genre)
values (3,'Хип-хоп');
insert into genre (id,musical_genre)
values (4,'Рэп');
insert into genre (id,musical_genre)
values (5,'Шансон');
insert into genre (id,musical_genre)
values (6,'Rnb')

-- добавляем певца(-ицу)
insert into artist (id,musical_artist)
values (1,'Марии Краймбрери');
insert into artist (id,musical_artist)
values (2,'Полина Гагарина');
insert into artist (id,musical_artist)
values (3,'Николай Басков');
insert into artist(id,musical_artist)
values (4,'Николай Басков');
insert into artist (id,musical_artist)
values (5,'Савичева Юлия');
insert into artist (id,musical_artist)
values (6,'Филипп Киркоров');
insert into artist (id,musical_artist)
values (7,'Егор Крид');
insert into  artist(id,musical_artist)
values (8,'Егор Крид');
insert into  artist(id,musical_artist)
values (9,'Елена Ваенга');
insert into artist (id,musical_artist)
values (10,'Бьянка')

insert into artistgenre(musical_genre,musical_artist)
values (1,1);
insert into artistgenre (musical_genre,musical_artist)
values (1,2);
insert into artistgenre (musical_genre,musical_artist)
values (1,3);
insert into artistgenre (musical_genre,musical_artist)
values (2,4);
insert into artistgenre (musical_genre,musical_artist)
values (1,5);
insert into artistgenre(musical_genre,musical_artist)
values (1,6);
insert into artistgenre (musical_genre,musical_artist)
values (1,7);
insert into artistgenre(musical_genre,musical_artist)
values (4,8);
insert into artistgenre (musical_genre,musical_artist)
values (5,9)
insert into artistgenre (musical_genre,musical_artist)
values (6,10)


-- добавляем альбомы
insert into album (id, name_album,year_of_release)
values (1,'Переобулась', 2018 );
insert into album (id,name_album,year_of_release)
values (2,'Верую', 2018);
insert into album (id,name_album,year_of_release)
values (3,'Игра',2016);
insert into album (id,name_album,year_of_release)
values (4,'SLV',2020);
insert into album (id,name_album,year_of_release)
values (5,'Ты,ты,ты',1991);
insert into album (id,name_album,year_of_release)
values (6,'Я',2018);
insert into album (id,name_album,year_of_release)
values (7,'58', 2020);
insert into  album(id,name_album,year_of_release)
values (9,'Желаю Солнца',2014);
insert into  album(id,name_album,year_of_release)
values (10,'Мальчик на Баду',2022)

insert into albumartist  (name_artist,title_album)
values (1,1);
insert into albumartist  (name_artist,title_album)
values (2,2);
insert into albumartist  (name_artist,title_album)
values (2,3);
insert into albumartist  (name_artist,title_album)
values (5,4);
insert into albumartist  (name_artist,title_album)
values (6,5);
insert into albumartist  (name_artist,title_album)
values (6,6);
insert into albumartist  (name_artist,title_album)
values (9,7);
insert into albumartist  (name_artist,title_album)
values (10,10)



--добавляем треки
insert into track(id,name_track,duration,album_id)
values (1,'Бой',219,1);
insert into track(id,name_track,duration,album_id)
values (2,'Баю бай',171,1);
insert into track(id,name_track,duration,album_id)
values (3,'Туси сам',215,1);
insert into track(id,name_track,duration,album_id)
values (4,'Мой Хранитель',235,2);
insert into track(id,name_track,duration,album_id)
values (5,'Верую',235,2);
insert into track(id,name_track,duration,album_id)
values (6,'Молния',220,4);
insert into track(id,name_track,duration,album_id)
values (7,'Дон Жуан',177,5);
insert into track(id,name_track,duration,album_id)
values (8,'Атлантида',223,5);
insert into track(id,name_track,duration,album_id)
values (9,'Лети',219,6);
insert into track(id,name_track,duration,album_id)
values (10,'Мой свет',219,6);
insert into track(id,name_track,duration,album_id)
values (11,'Барби',219,7);
insert into track(id,name_track,duration,album_id)
values (12,'Николай',224,3 );
insert into track(id,name_track,duration,album_id)
values (13,'Мальчик на Баду',172,10);
insert into track(id,name_track,duration,album_id)
values (14,'Желаю',155,9 );
insert into track(id,name_track,duration,album_id)
values (15,'Веселая песня',187,7);


-- добавляем сборники
insert into collection_of_song (id,title,year_of_release)
values (1,'Плейлист лучших песен 2014',2014);
insert into collection_of_song (id,title,year_of_release)
values (2,'Сборник летних хитов',2016);
insert into collection_of_song (id,title,year_of_release)
values (3,'Песня года',1991);
insert into collection_of_song (id,title,year_of_release)
values (4,'Стопудовые хиты',2018);
insert into collection_of_song (id,title,year_of_release)
values (5,'Хиты России 2018',2018);
insert into collection_of_song (id,title,year_of_release)
values (6,'Лучшие хиты 2018',2018);
insert into collection_of_song (id,title,year_of_release)
values (7,'Русские песни 2018',2018);
insert into collection_of_song (id,title,year_of_release)
values (8,'Новогодние песни',2020);
insert into collection_of_song (id,title,year_of_release)
values (9,'Лучшие хиты 22 года',2022)


insert into track_collection (collection,track)
values (1,14);
insert into track_collection (collection,track)
values (2,12);
insert into track_collection (collection,track)
values (3,8);
insert into track_collection (collection,track)
values (4,2);
insert into track_collection (collection,track)
values (5,10);
insert into track_collection (collection,track)
values (6,9);
insert into track_collection (collection,track)
values (7,11);
insert into track_collection (collection,track)
values (8,13)