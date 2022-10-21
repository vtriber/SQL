CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	duration NUMERIC(3, 2) NOT NULL,
	album_id INTEGER NOT null REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS compilations (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year INTEGER NOT null
);

CREATE TABLE IF NOT EXISTS perf_gen (
	genre_id INTEGER REFERENCES genres(id),
	performer_id INTEGER REFERENCES performers(id),
	CONSTRAINT gp PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS perf_album (
	performer_id INTEGER REFERENCES performers(id),
	album_id INTEGER REFERENCES albums(id),
	CONSTRAINT pa PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS track_compil (
	track_id INTEGER REFERENCES tracks(id),
	compilation_id INTEGER REFERENCES compilations(id),
	CONSTRAINT tc PRIMARY KEY (track_id, compilation_id)
);







