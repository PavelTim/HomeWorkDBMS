-- INSERT MUSIC DELIRIUM
-- у меня работает

INSERT INTO genre (id, name)
VALUES
    (1, 'Rock'),
    (2, 'Pop'),
    (3, 'Rap'),
    (4, 'Jazz'),
    (5, 'Metal'),
    (6, 'PostMetal'),
    (7, 'Soul'),
    (8, 'Afrobeat'),
    (9, 'Reggae'),
    (10, 'Breakcore'),
    (11, 'Progressive'),
    (12, 'Indie'),
    (13, 'Electronic music'),
    (14, 'Folk');
    
INSERT INTO performer (id, name)
VALUES
    (1, 'Nneka'),
    (2, 'Jaqee'),
    (3, 'Corpo-Mente'),
    (4, 'Igorrr'),
    (5, 'Myrkur'),
    (6, 'Mastodon'),
    (7, 'The Claypool Lennon Delirium'),
    (8, 'Riff Cohen'),
    (9, 'Animals as Leaders'),
    (10, 'Grimes'),
    (11, 'Austra'),
    (12, 'Archspire'),
    (13, 'Progenitor'),
    (14, 'Agnes Obel'),
    (15, 'MC Autoimmunn'),
    (16, 'Heilung');


INSERT INTO performer_genre (performer_id, genre_id)
VALUES
    (1, 7),
    (1, 8),
    (1, 9),
    (2, 7),
    (2, 4),
    (2, 9),
    (2, 2),
    (3, 6),
    (3, 12),
    (4, 5),
    (4, 6),
    (4, 10),
    (4, 11),
    (4, 12),
    (5, 6),
    (5, 12),
    (5, 13),
    (6, 5),
    (6, 11),
    (7, 1),
    (7, 11),
    (8, 2),
    (9, 4),
    (9, 5),
    (9, 11),
    (10, 12),
    (10, 13),
    (11, 12),
    (11, 13),
    (12, 5),
    (13, 5),
    (14, 12),
    (15, 3),
    (16, 14);
   
INSERT INTO album (id, title, year)
VALUES
    (1, 'My Fairy Tales', 2015),
    (2, 'Soul is Heavy', 2011),
    (3, 'Fly High', 2017),
    (4, 'Corpo-Mente', 2015),
    (5, 'Savage Sinusoid', 2017),
    (6, 'Mareridt', 2017),
    (7, 'The Hunter', 2011),
    (8, 'South of Reality', 2019),
    (9, 'A Paris', 2012),
    (10, 'The Madness of Many', 2016),
    (11, 'Visions',2012),
    (12, 'Feel It Break', 2011),
    (13, 'Bleed the Future', 2021),
    (14, 'True Truth', 2018),
    (15, 'Aventine', 2013),
    (16, 'Examples', 2018),
    (17, 'Lifa', 2018);
    
INSERT INTO performer_album (album_id, performer_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 4),
    (6, 5),
    (7, 6),
    (8, 7),
    (9, 8),
    (10, 9),
    (11, 10),
    (12, 11),
    (13, 12),
    (14, 13),
    (15, 14),
    (16, 15),
    (17, 16);   

INSERT INTO track (id, name, duration, album_id)
VALUES
    (1, 'Believe System', '00:04:35', 1),      -- 1
    (2, 'My Love, My Love', '00:03:32', 1),    -- 2
    (3, 'Book of Job', '00:03:45', 1),         -- 3

    (4, 'My Home', '00:04:09', 2),             -- 4
    (5, 'restless', '00:04:45', 2),            -- 5
    (6, 'Stay', '00:03:24', 2),                -- 6

    (7, 'Fly High', '00:04:11', 3),            -- 7
    (8, 'Miracle', '00:04:03', 3),             -- 8
    (9, 'Perfect World', '00:04:09', 3),       -- 9
    (10, 'Zola s Dance', '00:03:57', 3),        -- 10

    (11, 'Scylla', '00:04:22', 4),              -- 11
    (12, 'Arsalein', '00:04:08', 4),            -- 12
    (13, 'Fia', '00:03:45', 4),                 -- 13
    (14, 'Velandi', '00:03:30', 4),             -- 14

    (15, 'Houmous', '00:03:31', 5),             -- 15
    (16, 'ieuD', '00:03:55', 5),                -- 16
    (17, 'Apopathodiaphulatophobie', '00:02:01', 5),   -- 17
    (18, 'Spaghetti Forever', '00:04:23', 5),   -- 18

    (19, 'Maneblot', '00:03:33', 6),            -- 19
    (20, 'The Serpent', '00:04:03', 6),         -- 20
    (21, 'Crown', '00:04:57', 6),               -- 21
    (22, 'Ulvinde', '00:04:23', 6),             -- 22

    (23, 'Black Tongue', '00:03:28', 7),        -- 23
    (24, 'Curl of the Burl', '00:04:41', 7),    -- 24
    (25, 'Stargasm', '00:04:40', 7),            -- 25
    (26, 'The Sparrow', '00:05:31', 7),         -- 26

    (27, 'Little Fishes', '00:06:07', 8),       -- 27
    (28, 'Blood and Rockets: Movement I, Saga of Jack Parsons / Movement II, Too the Moon', '00:06:30', 8),
    (29, 'South Of Reality', '00:03:28', 8),    -- 29
    (30, 'Amethyst Realm', '00:07:48', 8),      -- 30

    (31, 'Jean qui rit, Jean qui pleure', '00:04:17', 9),   -- 31
    (32, 'J aime', '00:03:33', 9),              -- 32

    (33, 'Arithmophobia', '00:06:01', 10),      -- 33
    (34, 'Ectogenesis', '00:04:56', 10),        -- 34
    (35, 'Cognitive Contortions', '00:04:29', 10),  -- 35
    (36, 'Inner Assassins', '00:05:30', 10),    -- 36
    (37, 'Private Visions of the World', '00:04:57', 10),   -- 37
    (38, 'Backpfeifengesicht', '00:04:27', 10), -- 38
    (39, 'Transcentience', '00:05:32', 10),     -- 39
    (40, 'The Glass Bridge', '00:05:04', 10),   -- 40
    (41, 'The Brain Dance', '00:07:01', 10),    -- 41
    (42, 'Apeirophobia', '00:04:59', 10),       -- 42

    (43, 'Infinite Without Fulfilment', '00:01:36', 11),    -- 43
    (44, 'Genesis', '00:04:15', 11),                        -- 44
    (45, 'Oblivion', '00:04:12', 11),                       -- 45
    (46, 'Eight', '00:01:48', 11),                          -- 46

    (47, 'Darken Her Horse', '00:05:21', 12),   -- 47
    (48, 'Lose It', '00:04:29', 12),            -- 48
    (49, 'The Future', '00:04:03', 12),         -- 49
    (50, 'Beat and the Pulse', '00:04:56', 12), -- 50
    (51, 'Spellwork', '00:05:10', 12),          -- 51
    (52, 'The Choke', '00:04:12', 12),          -- 52
    (53, 'Hate Crime', '00:04:02', 12),         -- 53
    (54, 'The Villain', '00:04:06', 12),        -- 54
    (55, 'Shoot the Water', '00:03:23', 12),    -- 55
    (56, 'The Noise', '00:03:32', 12),          -- 56
    (57, 'The Beast', '00:04:03', 12),          -- 57

    (58, 'Drone Corpse Aviator', '00:03:46', 13),   -- 58
    (59, 'Golden Mouth of Ruin', '00:04:04', 13),   -- 59
    (60, 'Abandon the Linear', '00:04:35', 13),     -- 60
    (61, 'Bleed the Future', '00:03:47', 13),   -- 61
    (62, 'Drain of Incarnation', '00:04:18', 13),   -- 62
    (63, 'Reverie on the Onyx', '00:03:46', 13),    -- 63
    (64, 'A.U.M.', '00:03:03', 13),                  -- 64

    (65, 'Antichronist', '00:09:24', 14),           -- 65
    (66, 'Fool in the Van Allen belt', '00:07:20', 14), -- 66
    (67, 'Synthia My Love', '005:22:', 14),         -- 67
    (68, 'Nuclear Napoleon', '00:08:12', 14),       -- 68
    (69, 'It is Flat', '00:06:33', 14),             -- 69
    (70, 'The Beast from Brussels', '00:10:14', 14),    -- 70
    (71, 'Leaked Memory', '00:07:02', 14),          -- 71

    (72, 'Chord Left', '00:02:29', 15),     -- 72
    (73, 'Fuel to Fire', '00:05:29', 15),   -- 73
    (74, 'Dorian', '00:04:48', 15),         -- 74
    (75, 'Aventine', '00:04:08', 15),       -- 75
    (76, 'Run Cried the Crawling', '00:04:26', 15), -- 76
    (77, 'Tokka', '00:01:30', 15),          -- 77
    (78, 'The Curse', '00:05:53', 15),      -- 78
    (79, 'Pass Them By', '00:03:31', 15),   -- 79
    (80, 'Words Are Dead', '00:03:46', 15), -- 80
    (81, 'Fivefold', '00:01:59', 15),       -- 81
    (82, 'Smoke & Mirrors', '00:02:57', 15),    -- 82

    (83, 'Coeliac disease', '00:02:1', 16),             -- 83
    (84, 'Inflammatory bowel disease', '00:02:20', 16), -- 84
    (85, 'Multiple sclerosis', '00:02:30', 16),         -- 85
    (86, 'Rheumatoid arthritis', '00:02:40', 16),       -- 86
    (87, 'Systemic lupus erythematosus', '00:02:50', 16),   -- 87
    (88, 'Aplastic anemia', '00:03:00', 16),                -- 88

    (89, 'Opening Ceremony', '00:00:56', 17),      -- 89
    (90, 'Alfadhirhaiti', '00:07:16', 17),         -- 90
    (91, 'Krigsgaldr', '00:09:48', 17),               -- 91
    (92, 'Fylgija Futhorck', '00:12:45', 17);             -- 92


INSERT INTO compilation (id, title, year)
VALUES
    (1, 'Madness and Tranquility', 2020),
    (2, 'Hell and Heaven', 2018),
    (3, 'Anything', 2017),
    (4, 'Impossible to Listen', 2019),
    (5, 'Anachronism', 2018),
    (6, 'Folk', 2019),
    (7, 'Soul', 2021),
    (8, 'Dark Wave and Dream Pop', 2017);   

INSERT INTO compilation_track (track_id, compilation_id)
VALUES
    (58, 1), 
    (74, 1),
    (33, 1),
    (78, 1),
    (62, 1),
    (30, 1),
    (14, 1),

    (3, 2),
    (20, 2),
    (8, 2),
    (45, 2),
    (7, 2),
    (15, 2),
    (9, 2),

    (10, 3),
    (20, 3),
    (30, 3),
    (40, 3),
    

    (65, 4),  -- Impossible to Listen 65 - 71 83 - 88
    (84, 4),
    (70, 4),
    (87, 4),
    (83, 4),
    (68, 4),
    (71, 4),

    (58, 5),   -- 58 - 64 27 - 30 Anachronism
    (28, 5),
    (63, 5),
    (29, 5),
    (59, 5),
    

    (90, 6),    -- 89 - 92 Folk 19 - 22
    (19, 6),
    (92, 6),
    (22, 6),
    
    (3, 7),    -- Soul 1 - 10
    (5, 7),
    (6, 7),
    (8, 7),
    (10, 7),
    
    (48, 8),     -- dark wave and dream pop 47 - 57
    (51, 8),
    (50, 8),
    (47, 8),
    (44, 8),
    (45, 8);

-- add sudan archives

INSERT INTO performer (id, name)
VALUES
    (17, 'Sudan Archives');

INSERT INTO performer_genre (performer_id, genre_id)
VALUES
    (17, 13),
    (17, 7);
   
INSERT INTO album (id, title, year)
VALUES
    (18, 'Sink', 2018);

INSERT INTO performer_album (album_id, performer_id)
VALUES
    (18, 17);

INSERT INTO track (id, name, duration, album_id)
VALUES
    (93, 'Sink', '00:02:56', 18),
    (94, 'Nont for Sale', '00:03:39', 18),
    (95, 'Mind Control', '00:02:12', 18),
    (96, 'Beautiful Mistake', '00:02:36', 18);