create table if not exists Genre (
id serial primary key,
musical_genre VARCHAR(80) UNIQUE not null 
);

create table if not exists Artist (
id serial primary key,
musical_artist VARCHAR(40) UNIQUE not null
);

create table if not exists ArtistGenre (
musical_genre integer references Genre(id),
musical_artist integer references Artist(id),
constraint ga primary key (musical_genre,musical_artist)
);

create table if not exists Album (
id serial primary key,
musical_artist VARCHAR(40) not null,
name_album VARCHAR(80) not null,
year_of_release integer not null
);

create table if not exists Albumartist (
Title_album integer references Album(id),
name_artist integer references Artist(id),
constraint am primary key (Title_album,name_artist)
);

create table if not exists Track (
id serial primary key,
name_track VARCHAR(80),
Album_id integer not null references Album(id),
Duration integer not null 
);

create table if not exists Collection_of_Song (
id serial primary key,
Title VARCHAR(40),
year_of_release integer UNIQUE not null 
);

create table if not exists Track_collection (
collection integer references Collection_of_Song(id),
track integer references Track(id),
constraint tc primary key (collection,track)
);


