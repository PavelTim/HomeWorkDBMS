CREATE TABLE IF NOT EXISTS genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description text
);

-- artists
CREATE TABLE IF NOT EXISTS performer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    description text
);

-- многие ко многим (1 вариант)
CREATE TABLE IF NOT EXISTS performer_genre (
    genre_id INTEGER REFERENCES genre(id),
    performer_id INTEGER REFERENCES performer(id),
    CONSTRAINT pk PRIMARY KEY (genre_id, performer_id)
);

-- albums tracks
CREATE TABLE IF NOT EXISTS album (
    id SERIAL PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    YEAR INTEGER,
    description text
);

-- track
CREATE TABLE IF NOT EXISTS track (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    duration TIME NOT NULL,
    album_id INTEGER REFERENCES album(id),
    description text
);

-- многие ко многим (1 вариант)
CREATE TABLE IF NOT EXISTS performer_album (
    performer_id INTEGER REFERENCES performer(id),
    album_id INTEGER REFERENCES album(id),
    CONSTRAINT pk_performer_album PRIMARY KEY (performer_id, album_id)
);

-- compilation
CREATE TABLE IF NOT EXISTS compilation (
    id SERIAL PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    year INTEGER,
    description text
);

-- многие ко многим (1 вариант)
CREATE TABLE IF NOT EXISTS compilation_track (
    compilation_id INTEGER REFERENCES compilation(id),
    track_id INTEGER REFERENCES track(id),
    CONSTRAINT pk_compilation_track PRIMARY KEY (compilation_id, track_id)
);

-- переименовал первое ограничение
ALTER TABLE performer_genre RENAME CONSTRAINT pk TO pk_performer_genre;