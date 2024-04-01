CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	id_album INTEGER NOT NULL REFERENCES Albums(id),
	name VARCHAR(100) NOT NULL,
	time INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS GenresPerformers (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genres(id),
	performer_id INTEGER NOT NULL REFERENCES Performers(id)
);

CREATE TABLE IF NOT EXISTS PerformersAlbums (
	id SERIAL PRIMARY KEY,
	performer_id INTEGER NOT NULL REFERENCES Performers(id),
	album_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS SongsCollections (
	id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES Collections(id),
	song_id INTEGER NOT NULL REFERENCES Songs(id)
);