
-- Inserção Assinaturas
INSERT INTO Assinatura (id_plano, nome, beneficios, valor, data_inicio, data_vencimento) VALUES
        (1, 'Standard', 'Todas músicas disponíveis', 0, '01-01-2023', '01-01-2024'),
        (2, 'Plus', 'Todas músicas e podcasts disponíveis', 5, '01-01-2023', '01-01-2024'),
        (3, 'Deluxe', 'Todas midias disponíveis e criação de playlist', 15, '01-01-2023', '01-01-2024');

-- Inserção Generos Musicais
INSERT INTO Genero (id_genero, nome) VALUES
        (1, 'Rock'),
        (2, 'Pop'),
        (3, 'Funk'),
        (4, 'Sertanejo'),
        (5, 'Pagode'),
        (6, 'Metal'),
        (8, 'Rap'),
        (9, 'Trap'),

-- Inserção Temas de Podcast
INSERT INTO Tema (id_tema, descricao) VALUES
        (1, 'Politica'),
        (2, 'Criminal'),
        (3, 'Geek'),
        (4, 'Jornalistico'),
        (5, 'RPG'),
        (6, 'Entrevista'),
        (7, 'Humor')

-- Inserção Artistas
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
        (12, 'Pixote');

-- Inserção Albuns
INSERT INTO Album (id_album, tipo, nome, ano, id_artista) values
        (1, 'Disco', 'Appetite for Destruction', 1987, 1);

-- Inserção Músicas
INSERT INTO Midia (id_midia, nome, duracao, qtd_streamings, data_lancamento) VALUES
        (1, 'Welcome To The Jungle', '00:04:45', 0, '01-10-1989');
INSERT INTO Musica (id_midia, id_album, letra) VALUES
        (1, 1, 'letra_Aqui');




INSERT INTO Artista () VALUES
(),

INSERT INTO Album () VALUES
(),

INSERT INTO Musica () VALUES
(),

-- Inserção Podcast
INSERT INTO Podcast () VALUES
(),

