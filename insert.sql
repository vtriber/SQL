--Так как в большинстве запросов поле id заполняется автоматически
--для корректных связей необходимо запускать все запросы последовательно

--Заполнение таблицы Исполнители (performers):

INSERT INTO performers 
VALUES(1, 'Король и шут');

INSERT INTO performers 
VALUES(2, 'Элаиза Фиджеральд');

INSERT INTO performers 
VALUES(3, 'Клава Кока');

INSERT INTO performers 
VALUES(4, 'Мумий Тролль');

INSERT INTO performers 
VALUES(5, 'Тимати');

INSERT INTO performers 
VALUES(6, 'Луй Армстронг');

INSERT INTO performers 
VALUES(7, 'Prodigy');

INSERT INTO performers 
VALUES(8, 'Нилетто');

INSERT INTO performers 
VALUES(9, 'Баста');

INSERT INTO performers 
VALUES(10, 'Гражданская оборона');


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

INSERT INTO genres (name) 
VALUES('Панк рок');


-- Заполнение таблицы Альбомы (albums):

INSERT INTO albums (name, year) 
VALUES('Ели мясо мужики', 1999);

INSERT INTO albums (name, year) 
VALUES('Криолит', 2022);

INSERT INTO albums (name, year) 
VALUES('Кусто', 2015);

INSERT INTO albums (name, year) 
VALUES('Восток х северо-запад', 2018);

INSERT INTO albums (name, year) 
VALUES('What a Wonderful World', 1967);

INSERT INTO albums (name, year) 
VALUES('Experience', 1992);

INSERT INTO albums (name, year) 
VALUES('13', 2013);

INSERT INTO albums (name, year) 
VALUES('Рай.он', 2021);

INSERT INTO albums (name, year) 
VALUES('Ella and Louis', 1956);

INSERT INTO albums (name, year) 
VALUES('Русское поле экспериментов', 1989);


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

INSERT INTO tracks (name, duration, album_id) 
VALUES('Как сметана', 0.42, 10);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Снова темно', 1.55, 10);

INSERT INTO tracks (name, duration, album_id) 
VALUES('Непонятная песенка', 2.17, 10);


-- Заполнение таблицы Сборники (compilations):

INSERT INTO compilations (name, year) 
VALUES('Музыка прошлого века', 2001);

INSERT INTO compilations (name, year) 
VALUES('Рок и джаз', 2018);

INSERT INTO compilations (name, year) 
VALUES('Хип Хоп', 2020);

INSERT INTO compilations (name, year) 
VALUES('Дискотека 21 века', 2022);

INSERT INTO compilations (name, year) 
VALUES('Панк рок жив', 2005);

INSERT INTO compilations (name, year) 
VALUES('Дерьмовый реп', 2019);

INSERT INTO compilations (name, year) 
VALUES('Поющие трусы', 2017);

INSERT INTO compilations (name, year) 
VALUES('Женский вокал', 2001);


-- Заполнение таблицы связей сборников с треками (track_compil):

INSERT INTO track_compil 
VALUES(1, 1);

INSERT INTO track_compil 
VALUES(3, 1);

INSERT INTO track_compil 
VALUES(8, 1);

INSERT INTO track_compil 
VALUES(9, 1);

INSERT INTO track_compil 
VALUES(10, 1);

INSERT INTO track_compil 
VALUES(1, 2);

INSERT INTO track_compil 
VALUES(3, 2);

INSERT INTO track_compil 
VALUES(8, 2);

INSERT INTO track_compil 
VALUES(9, 2);

INSERT INTO track_compil 
VALUES(20, 2);

INSERT INTO track_compil 
VALUES(11, 3);

INSERT INTO track_compil 
VALUES(12, 3);

INSERT INTO track_compil 
VALUES(4, 3);

INSERT INTO track_compil 
VALUES(5, 3);

INSERT INTO track_compil 
VALUES(11, 4);

INSERT INTO track_compil 
VALUES(12, 4);

INSERT INTO track_compil 
VALUES(17, 4);

INSERT INTO track_compil 
VALUES(18, 4);

INSERT INTO track_compil 
VALUES(1, 5);

INSERT INTO track_compil 
VALUES(3, 5);

INSERT INTO track_compil 
VALUES(6, 5);

INSERT INTO track_compil 
VALUES(7, 5);

INSERT INTO track_compil 
VALUES(11, 6);

INSERT INTO track_compil 
VALUES(12, 6);

INSERT INTO track_compil 
VALUES(2, 6);

INSERT INTO track_compil 
VALUES(17, 7);

INSERT INTO track_compil 
VALUES(18, 7);

INSERT INTO track_compil 
VALUES(5, 7);

INSERT INTO track_compil 
VALUES(20, 8);

INSERT INTO track_compil 
VALUES(18, 8);

INSERT INTO track_compil 
VALUES(19, 8);

INSERT INTO track_compil 
VALUES(21, 5);

INSERT INTO track_compil 
VALUES(22, 5);

INSERT INTO track_compil 
VALUES(23, 5);


-- Заполнение таблицы связей альбомов и исполнителей (perf_album):

INSERT INTO perf_album
VALUES(1, 1);

INSERT INTO perf_album
VALUES(2, 9);

INSERT INTO perf_album
VALUES(3, 3);

INSERT INTO perf_album
VALUES(5, 7);

INSERT INTO perf_album
VALUES(6, 5);

INSERT INTO perf_album
VALUES(7, 6);

INSERT INTO perf_album
VALUES(8, 2);

INSERT INTO perf_album
VALUES(9, 8);

INSERT INTO perf_album
VALUES(4, 4);

INSERT INTO perf_album
VALUES(10, 10);


-- Заполнение таблицы связей жанров и исполнителей (perf_gen):

INSERT INTO perf_gen
VALUES(1, 1);

INSERT INTO perf_gen
VALUES(1, 4);

INSERT INTO perf_gen
VALUES(2, 3);

INSERT INTO perf_gen
VALUES(2, 8);

INSERT INTO perf_gen
VALUES(7, 10);

INSERT INTO perf_gen
VALUES(3, 5);

INSERT INTO perf_gen
VALUES(4, 6);

INSERT INTO perf_gen
VALUES(4, 2);

INSERT INTO perf_gen
VALUES(5, 9);

INSERT INTO perf_gen
VALUES(6, 7);
