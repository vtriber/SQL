--Заполнение таблицы Исполнители (performers):

INSERT INTO performers (name) 
VALUES('Король и шут');

INSERT INTO performers (name) 
VALUES('Элаиза Фиджеральд');

INSERT INTO performers (name) 
VALUES('Клава Кока');

INSERT INTO performers (name) 
VALUES('Наутилус Пампилиус');

INSERT INTO performers (name) 
VALUES('Тимати');

INSERT INTO performers (name) 
VALUES('Луй Армстронг');

INSERT INTO performers (name) 
VALUES('Prodigy');

INSERT INTO performers (name) 
VALUES('Нилетто');

INSERT INTO performers (name) 
VALUES('Баста');


-- Заполнение таблицы Жанры (genres):

INSERT INTO genres (name) 
VALUES('Рок');

INSERT INTO genres (name) 
VALUES('Поп');

INSERT INTO genres (name) 
VALUES('Хип-Хоп');

INSERT INTO genres (name) 
VALUES('Джаз');

INSERT INTO genres (name) 
VALUES('Реп');

INSERT INTO genres (name) 
VALUES('Техно');


-- Заполнение таблицы Альбомы (albums):

INSERT INTO albums (name, year) 
VALUES('Ели мясо мужики', '1999');

INSERT INTO albums (name, year) 
VALUES('Криолит', '2022');

INSERT INTO albums (name, year) 
VALUES('Кусто', '2015');

INSERT INTO albums (name, year) 
VALUES('Восток х северо-запад', '2018');

INSERT INTO albums (name, year) 
VALUES('What a Wonderful World', '1967');

INSERT INTO albums (name, year) 
VALUES('Experience', '1992');

INSERT INTO albums (name, year) 
VALUES('13', '2013');

INSERT INTO albums (name, year) 
VALUES('Рай.он', '2021');

INSERT INTO albums (name, year) 
VALUES('Ella and Louis', '1956');


-- Заполнение таблицы Треки (tracks):

INSERT INTO tracks (name, duration, album_id) 
VALUES('Ели мясо мужики', 2.40, 1);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Remix by Niman', 5.36, 8);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Лесник', 3.13, 1);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Мария', 3.03, 1);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Рентген', 3.48, 7);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Wind It Up', 4.33, 6);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Jericho', 3.44, 6);

INSERT INTO tracks (name, duration, album_id) 
VALUES('What a Wonderful World', 2.18, 5);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Cabaret', 2.46, 5);

INSERT INTO tracks (name, duration, album_id) 
VALUES('The Home Fire', 3.16, 5);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Планы', 4.26, 4);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Не помню зачем', 4.01, 4);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Милота', 3.39, 4);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Мой герой', 3.15, 3);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Просто танцуй', 3.04, 3);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Быть собой', 3.38, 3);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Кусто', 3.33, 3);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Люминофор', 1.15, 2);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Она спит', 3.40, 2);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Tenderly', 5.06, 9);

alter table tracks alter column duration type numeric(3, 2);


