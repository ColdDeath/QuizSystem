DELETE FROM authorities;
DELETE FROM answer;
DELETE FROM result;
DELETE FROM question_variants;
DELETE FROM variant;
DELETE FROM question;
DELETE FROM quest;

INSERT INTO quest (id, name, create_date, IS_ACTIVE) VALUES
  (1, 'Инфраструктура башни "ОКО"', '2018-05-11 13:00:00', 'true'),
  (2, 'Корпоративный стиль', '2018-05-11 14:03:00', 'false'),
  (3, 'Канцелярские товары', '2018-05-11 14:03:00', 'false');

INSERT INTO question (id, quest_id, name, ANSWER_TYPE_ID, NUM) VALUES
  (4, 1, 'Считаете ли Вы необходимым открыть лестничные пролеты?', 0, 1),
  (5, 1, 'На каком этаже Вы работаете?', 0, 2),
  (6, 1, 'Что требуется улучшить в инфраструктуре башни "ОКО"?', 1, 3),
  (7, 1, 'Требуются ли специальные места для курения?', 0, 4),
  (8, 2, 'Каких корпоративных продуктов не хватает у Вас в Управлении?', 0, 1),
  (9, 2, 'Предложите Ваш продукт', 1, 2),
  (10, 2, 'Какие изменения Вы бы внесли в корпоративный стиль?', 1, 3),
  (11, 3, 'У Вас достаточно ручек и карандашей?', 0, 1),
  (12, 3, 'Ваши действия при отсутствии какого-либо предмета канцелярии?', 0, 2);


INSERT INTO variant (id, name) VALUES
  (13, 'Да, часто бывает необходимо перейти на этаж ниже/выше'),
  (14, 'Нет, есть лифты'),
  (15, '17'),
  (16, '18'),
  (17, '19'),
  (18, '20'),
  (19, '21'),
  (20, '22'),
  (21, '23'),
  (22, '24'),
  (23, '25'),
  (24, 'Да'),
  (25, 'Нет'),
  (26, 'Флеш-накопителей'),
  (27, 'Календарей'),
  (28, 'Ежедневников'),
  (29, 'Попрошу одолжить коллегу'),
  (30, 'Напишу заявку в УАХО'),
  (31, 'Попрошу заказать делопроизводителей своего подразделения');

INSERT INTO question_variants (questions_id, variants_id) VALUES
  (4, 13),
  (4, 14),
  (5, 15),
  (5, 16),
  (5, 17),
  (5, 18),
  (5, 19),
  (5, 20),
  (5, 21),
  (5, 22),
  (5, 23),
  (7, 24),
  (7, 25),
  (8, 26),
  (8, 27),
  (8, 28),
  (11, 24),
  (11, 25),
  (12, 29),
  (12, 30),
  (12, 31);

INSERT INTO result (id, quest_id, username, fullname, answer_start, answer_modified, status) VALUES
  (32, 3, 'smahrov', 'Махров С.С.', '2018-05-11 15:10:00', '2018-05-11 15:30:00', 0),
  (33, 3, 'apetrov', 'Петров А.Б.', '2018-05-11 15:10:00', '2018-05-11 15:30:00', 0),
  (34, 3, 'yivanov', 'Иванов Я.А.', '2018-05-11 15:10:00', '2018-05-11 15:30:00', 0),
  (35, 3, 'asergeev', 'Сергеев А.И.', '2018-05-11 15:10:00', '2018-05-11 15:30:00', 0),
  (36, 2, 'smahrov', 'Махров С.С.', '2018-05-11 15:10:00', '2018-05-11 15:30:00', 0),
  (37, 2, 'apetrov', 'Петров А.Б.', '2018-05-11 15:10:00', '2018-05-11 15:30:00', 0);

INSERT INTO answer (id, result_id, question_id, variant_id, answer_text) VALUES
  (38, 32, 11, 24, null),
  (39, 32, 12, 30, null),
  (40, 33, 11, 24, null),
  (41, 33, 12, 30, null),
  (42, 34, 11, 24, null),
  (43, 34, 12, 29, null),
  (44, 35, 11, 25, null),
  (45, 35, 12, 31, null),
  (46, 36, 8, 27, null),
  (47, 36, 9, null, 'Ответ на 1-ый текстовый вопрос 1-го респондента'),
  (48, 36, 10, null, 'Ответ на 2-ой текстовый вопрос 1-го респондента'),
  (49, 37, 8, 28, null),
  (50, 37, 9, null, 'Ответ на 1-ый текстовый вопрос 2-го респондента'),
  (51, 36, 10, null, 'Ответ на 2-ой текстовый вопрос 2-го респондента');

INSERT INTO authorities (username, authority) VALUES
  ('smahrov', 'ROLE_ADMIN');
