
---- Inserção Assinaturas
INSERT INTO Assinatura (id_plano, nome, beneficios, valor, data_inicio, data_vencimento) VALUES
        (1, 'Standard', 'Todas músicas disponíveis', 0, '01-01-2023', '01-01-2024'),
        (2, 'Plus', 'Todas músicas e podcasts disponíveis', 5, '01-01-2023', '01-01-2024'),
        (3, 'Deluxe', 'Todas midias disponíveis e criação de playlist', 15, '01-01-2023', '01-01-2024');

---- Inserção Generos Musicais
INSERT INTO Genero (id_genero, nome) VALUES
        (1, 'Rock'),
        (2, 'Pop'),
        (3, 'Funk'),
        (4, 'Sertanejo'),
        (5, 'Pagode'),
        (6, 'Metal'),
        (8, 'Rap'),
        (9, 'Trap'),

---- Inserção Artistas
INSERT INTO Artista (id_artista, nome) VALUES 
        (1, 'Guns n Roses');
        (2, 'AC/DC');
        (3, 'Harry Styles');
        (4, 'The Weeknd');
        (5, 'Matuê');
        (6, 'Chicãozinho e Xororó');
        (7, 'Travis Scott');
        (8, 'Katy Perry');
        (9, 'Metallica');
        (10, 'MC Kekel');
        (11, 'Pixote');
        (12, 'Marina Sena');
        (13, 'Eminem');
        (14, 'Pantera');

---- Inserção Albuns
INSERT INTO Album (id_album, tipo, nome, ano, id_artista) VALUES
        (1, 'Disco', 'Appetite for Destruction', 1987, 1);
        (2, 'Disco', 'Back In Black', 1980, 2);
        (3, 'Disco', 'Harry`s House', 2022, 3);
        (4, 'Disco', 'After Hours', 2020, 4);
        (5, 'Single', 'Conexões de Máfia', 2023, 5);
        (6, 'Disco', 'Cowboy do Asfalto', 1990, 6);
        (7, 'Disco', 'Birds in the Trap Sing McKnight', 2016, 7);
        (8, 'Disco', 'Teenage Dream', 2010, 8);
        (9, 'Single', 'Namorar pra Quê?', 2016, 9);
        (10, 'Disco', 'Pixote no Estúdio Showlivre, Vol. 3', 2007, 10);
        (11, 'Single', 'Ombrim', 2023, 12);
        (12, 'Disco', 'The Marshall Mathers LP 2', 2013, 13);
        (13, 'Disco', 'Vulgar Display of Power', 1992, 14);

---- Inserção Músicas
INSERT INTO Midia (id_midia, nome, duracao, qtd_streamings, data_lancamento) VALUES
        (1, 'Welcome To The Jungle', '04:34', 0, '01-10-1987'),
        (2, 'Paradise City', '06:46', 0, '30-11-1988'),
        (3, 'As It Was', '03:02', 0, '07-05-2021'),
        (4, 'Back in Black', '04:15', 0, '25-07-1980'),
        (5, 'Blinding Lights', '03:20', 0, '29-11-2019'),
        (6, 'Conexão de Máfia', '03:45', 0, '15-03-2020'),
        (7, 'Evidências', '04:39', 0, '01-10-1987'),
        (8, 'Goosebumps', '04:03', 0, '03-09-2016'),
        (9, 'Last Friday Night', '03:50', 0, '06-06-2011'),
        (10, 'Master of Puppets', '08:38', 0, '03-03-1986'),
        (11, 'Namorar Pra Quê', '02:49', 0, '18-01-2019'),
        (12, 'Nem de Graça', '02:48', 0, '15-11-2019'),
        (13, 'Ombrim', '03:00', 0, '05-06-2020'),
        (14, 'Paradise City', '06:46', 0, '30-11-1988'),
        (15, 'Rap God', '06:03', 0, '15-10-2013'),
        (16, 'Todo Mundo Vai Sofrer', '03:02', 0, '28-06-2019'),
        (17, 'Walk', '05:15', 0, '23-08-1994');
INSERT INTO Musica (id_midia, id_album, letra) VALUES
        (1, 1, 'letra_Aqui');
        (2, 2, 'letra_Aqui');
        (3, 3, 'letra_Aqui');
        (4, 4, 'letra_Aqui');
        (5, 5, 'letra_Aqui');
        (6, 6, 'letra_Aqui');
        (7, 7, 'letra_Aqui');
        (8, 8, 'letra_Aqui');
        (9, 9, 'letra_Aqui');
        (10, 10, 'letra_Aqui');
        (12, 11, 'letra_Aqui');
        (12, 12, 'letra_Aqui');

-- Inserção de Relação entre Músicas e Gêneros
INSERT INTO Genero_Musica (id_midia, id_genero) VALUES
    (1, 1), -- Welcome To The Jungle - Guns n Roses - Rock
    (2, 1), -- Paradise City - Guns n Roses - Rock
    (3, 2), -- As It Was - Harry Styles - Pop
    (4, 1), -- Back in Black - AC/DC - Rock
    (5, 2), -- Blinding Lights - The Weeknd - Pop
    (6, 9), -- Conexão de Máfia - Matuê - Trap
    (7, 4), -- Evidências - Chitãozinho e Xororó - Sertanejo
    (8, 8), -- Goosebumps - Travis Scott - Rap
    (9, 2), -- Last Friday Night - Katy Perry - Pop
    (10, 6), -- Master of Puppets - Metallica - Metal
    (11, 3), -- Namorar Pra Quê - MC Kekel - Funk
    (12, 5), -- Nem de Graça - Pixote - Pagode
    (13, 2), -- Ombrim - Marina Sena - Pop
    (13, 3), -- Ombrim - Marina Sena - Funk
    (14, 1), -- Paradise City - Guns n Roses - Rock
    (15, 8), -- Rap God - Eminem - Rap
    (16, 3), -- Todo Mundo Vai Sofrer - MC Kekel - Funk
    (17, 6); -- Walk - Pantera - Metal

---- Inserção Temas de Podcast
INSERT INTO Tema (id_tema, descricao) VALUES
        (1, 'Politica'),
        (2, 'Criminal'),
        (3, 'Geek'),
        (4, 'Jornalistico'),
        (5, 'RPG'),
        (6, 'Entrevista'),
        (7, 'Humor')

---- Inserção Podcasts