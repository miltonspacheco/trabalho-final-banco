--Inserção Assinaturas
INSERT INTO Plano_Assinatura (id_plano, nome, beneficios, valor) VALUES
        (1, 'Standard', 'Todas musicas disponiveis', 0),
        (2, 'Plus', 'Todas musicas e podcasts disponiveis', 5),
        (3, 'Deluxe', 'Todas midias disponiveis e criacao de playlist', 15);


----
--Inserção Usuario
INSERT INTO Usuario (nome, email, senha, cpf) VALUES
        ('Milton Pacheco', 'miltondasp@gmail.com', 'senhamilton', '12345678910'),
        ('Joao Silva', 'joao@email.com', 'senhajoao', '12345678901'),
        ('Maria Souza', 'maria@email.com', 'senhamaria', '98765432109'),
        ('Pedro Oliveira', 'pedro@email.com', 'senhapedro', '45678912306'),
        ('Marina Santos', 'marinaa@gmail.com', 'senhamarina', '92732780465'),
        ('Ana Pereira', 'ana@email.com', 'senhaana', '78901234567'),
        ('Rafael Mendes', 'rafael@email.com', 'senharafael', '54321678901'),
        ('Camila Fernandes', 'camila@email.com', 'senhacamila', '45678901234'),
        ('Lucas Almeida', 'lucas@email.com', 'senhalucas', '98765432100'),
        ('Julia Costa', 'julia@email.com', 'senhajulia', '12345098765'),
        ('Carlos Garcia', 'carlos@email.com', 'senhacarlos', '12345678902'),
        ('Fernanda Castro', 'fernanda@email.com', 'senhafernanda', '98765432110'),
        ('Luiz Gomes', 'luiz@email.com', 'senhaluiz', '45678912307'),
        ('Ana Paula', 'anapaula@email.com', 'senhaanapaula', '92732780466'),
        ('Guilherme Santos', 'guilherme@email.com', 'senhaguilherme', '78901234568'),
        ('Caio Pereira', 'caio@email.com', 'senhacaio', '54321678902'),
        ('Beatriz Fernandes', 'beatriz@email.com', 'senhabeatriz', '45678901235'),
        ('Gabriel Almeida', 'gabriel@email.com', 'senhagabriel', '98765432101'),
        ('Laura Costa', 'laura@email.com', 'senhalaura', '12345098766');


----
--Inserção Assinaturas
INSERT INTO Assinatura (id_usuario, id_plano, data_inicio, data_vencimento) VALUES
        (1, 1, '2023-01-01', null),
        (2, 2, '2023-01-01', '2024-01-01'),
        (1, 3, '2023-01-01', '2024-01-01'),
        (3, 1, '2023-01-01', null),
        (4, 1, '2023-01-01', null),
        (5, 3, '2023-01-01', '2024-01-01'),
        (6, 2, '2023-01-01', '2024-01-01'),
        (7, 2, '2023-01-01', '2024-01-01'),
        (8, 1, '2023-01-01', null),
        (9, 1, '2023-01-01', null),
        (10, 1, '2023-01-01', null),
        (11, 2, '2023-07-01', '2024-07-01'),
        (12, 3, '2023-07-01', '2024-07-01'),
        (13, 1, '2023-07-01', null),
        (14, 2, '2023-07-01', '2024-07-01'),
        (15, 1, '2023-07-01', null),
        (16, 2, '2023-07-01', '2024-07-01'),
        (17, 1, '2023-07-01', null),
        (18, 3, '2023-07-01', '2024-07-01'),
        (19, 1, '2023-07-01', null);


----
--Inserção Playlist
INSERT INTO Playlist (id_playlist, id_usuario, nome, descricao) VALUES
        (1, 1, 'Rock Antigo', 'minha playlist de rock'),
        (2, 2, 'Jazz Relaxante', 'Músicas tranquilas de Jazz para relaxar'),
        (3, 3, 'Pop do Momento', 'Hits pop atuais para curtir'),
        (4, 4, 'Clássicos Inesquecíveis', 'Músicas clássicas que marcaram época'),
        (5, 4, 'Batidas Eletrônicas', 'Uma seleção de músicas eletrônicas para festas'),
        (6, 1, 'Indie Alternativo', 'Indie alternativo e underground'),
        (7, 5, 'Rimas Marcantes', 'As melhores rimas do mundo do hip hop'),
        (8, 6, 'Sabor Latino', 'Músicas latinas para dançar e aproveitar');


---- 
--Inserção Artistas
INSERT INTO Artista (id_artista, nome, tipo) VALUES 
        (1, 'Guns n Roses', 'Banda'),
        (2, 'AC/DC','Banda'),
        (3, 'Harry Styles', 'Solo'),
        (4, 'The Weeknd', 'Solo'),
        (5, 'Matue', 'Solo'),
        (6, 'Chicaozinho e Xororo', 'Banda'),
        (7, 'Travis Scott', 'Solo'),
        (8, 'Katy Perry', 'Solo'),
        (9, 'Metallica', 'Banda'),
        (10, 'MC Kekel', 'Solo'),
        (11, 'Pixote', 'Banda'),
        (12, 'Marina Sena', 'Solo'),
        (13, 'Eminem', 'Solo'),
        (14, 'Pantera', 'Banda'),
        (15, 'Coldplay', 'Banda');


---- 
--Inserção Albuns
INSERT INTO Album (id_album, tipo, nome, ano, id_artista) VALUES
        (1, 'Disco', 'Appetite for Destruction', 1987, 1),
        (2, 'Disco', 'Back In Black', 1980, 2),
        (3, 'Disco', 'Harry`s House', 2022, 3),
        (4, 'Disco', 'After Hours', 2020, 4),
        (5, 'Single', 'Conexoes de Mafia', 2023, 5),
        (6, 'Disco', 'Cowboy do Asfalto', 1990, 6),
        (7, 'Disco', 'Birds in the Trap Sing McKnight', 2016, 7),
        (8, 'Disco', 'Teenage Dream', 2010, 8),
        (9, 'Disco', 'Master of Puppets', 1986, 9),
        (10, 'Single', 'Namorar pra Que?', 2016, 10),
        (11, 'Disco', 'Pixote no Estúdio Showlivre, Vol. 3', 2007, 11),
        (12, 'Single', 'Ombrim', 2023, 12),
        (13, 'Disco', 'The Marshall Mathers LP 2', 2013, 13),
        (14, 'Disco', 'Vulgar Display of Power', 1992, 14),
        (15, 'Disco', 'Parachutes', 2000, 15),
        (16, 'Disco', 'X&Y', 2005, 15);


---- 
--Inseção Midias
INSERT INTO Midia (id_midia, nome, duracao, qtd_streamings, data_lancamento, conteudo) VALUES
--Inserção Músicas
        (1, 'Welcome To The Jungle', '04:34', 0, '1987-10-01', 'media/music/Welcome_To_The_Jungle.mp3'),
        (2, 'Paradise City', '06:46', 0, '1988-11-30', 'media/music/Paradise_City.mp3'),
        (3, 'As It Was', '03:02', 0, '2021-05-07', 'media/music/As_It_Was.mp3'),
        (4, 'Back in Black', '04:15', 0, '1980-07-25', 'media/music/Back_In_Black.mp3'),
        (5, 'Blinding Lights', '03:20', 0, '2019-11-29', 'media/music/Blinding_Lights.mp3'),
        (6, 'Conexao de Mafia', '03:45', 0, '2020-03-15', 'media/music/Conexoes_de_Mafia.mp3'),
        (7, 'Evidencias', '04:39', 0, '1987-10-01', 'media/music/Evidencias.mp3'),
        (8, 'Goosebumps', '04:03', 0, '2016-09-03', 'media/music/Goosebumps.mp3'),
        (9, 'Last Friday Night', '03:50', 0, '2011-06-06', 'media/music/Last_Friday_Night.mp3'),
        (10, 'Master of Puppets', '08:38', 0, '1986-03-03', 'media/music/Master_of_Puppets.mp3'),
        (11, 'Namorar Pra Que', '02:49', 0, '2019-01-18', 'media/music/Namorar_Pra_Que.mp3'),
        (12, 'Nem de Graca', '02:48', 0, '2019-11-15', 'media/music/Nem_de_Graca.mp3'),
        (13, 'Ombrim', '03:00', 0, '2020-06-05', 'media/music/Ombrim.mp3'),
        (14, 'Rap God', '06:03', 0, '2013-10-15', 'media/music/Rap_God.mp3'),
        (15, 'Todo Mundo Vai Sofrer', '03:02', 0, '2019-06-28', 'media/music/Todo_Mundo_Vai_Sofrer.mp3'),
        (16, 'Walk', '05:15', 0, '1994-08-23', 'media/music/Walk.mp3'),
        (26, 'Firework', '03:38', 0, '2010-10-28', 'media/music/Firework.mp3'),
        (27, 'Fix You', '04:55', 0, '2005-09-05', 'media/music/Fix_You.mp3'),
        (28, 'Hells Bells', '05:09', 0, '1980-06-25', 'media/music/Hells_Bells.mp3'),
        (29, 'Nightrain', '04:28', 0, '1988-11-30', 'media/music/Nightrain.mp3'),
        (30, 'Save Your Tears', '03:36', 0, '2020-08-09', 'media/music/Save_Your_Tears.mp3'),
        (31, 'Shoot To Thrill', '05:20', 0, '1980-01-26', 'media/music/Shoot_To_Thrill.mp3'),
        (32, 'Yellow', '04:28', 0, '2000-06-26', 'media/music/Yellow.mp3'),
--Inserção Podcast
        (17, 'MANO BROWN - Podpah', '02:53:58', 0, '2022-03-07', 'media/music/MANO_BROWN_Podpah.mp3'),
        (18, 'LULA - Podpah', '02:36:20', 0, '2021-12-02', 'media/podcast/LULA_Podpah.mp3'),
        (19, 'Web3 vale o hype? - Hipsters Ponto Tech', '04:34', 0, '2023-10-24', 'media/podcast/Web3_vale_o_hype.mp3'),
        (20, 'Loki 2: O glorioso propósito do deus da trapaça - NerdCast', '04:34', 0, '2023-11-17', 'media/podcast/nerdcast_908_loki_2.mp3'),
        (21, 'SPACE TODAY - Flow Podcast', '02:17:51', 0, '2020-10-21', 'media/podcast/SPACE_TODAY_FlowPodcast.mp3'),
        (22, 'ANDERSON SILVA - Flow Podcast', '03:37:43', 0, '2023-11-15', 'media/podcast/Anderson_Silva_FlowPodcast.mp3'),
        (23, 'CLOVIS DE BARROS FILHO - Flow Podcast', '02:17:51', 0, '2023-10-10', 'media/podcast/CLOVIS_DE_BARROS_FILHO_FlowPodcast.mp3'),
        (24, 'TAIS ARAUJO - Podpah', '01:56:16', 0, '2023-03-20', 'media/podcast/TAIS_ARAUJO_Podpah.mp3'),
        (25, 'ANDRIANO IMPERADOR - Podpah', '01:21:13', 0, '2023-07-14', 'media/podcast/Anderson_Silva_FlowPodcast.mp3');


----
--Inserção Reproducao
INSERT INTO Reproducao (id_midia, id_usuario, data_reproducao) VALUES
        (1, 1, '2023-10-23 17:45:00'),
        (5, 19, '2023-08-12 17:45:00'),
        (6, 4, '2023-12-25 17:45:00'),
        (9, 6, '2023-11-07 17:45:00'),
        (10, 18, '2023-10-20 17:45:00'),
        (2, 7, '2023-10-15 18:30:00'),
        (3, 3, '2023-09-13 18:35:00'),
        (5, 5, '2023-12-22 18:40:00'),
        (8, 3, '2023-11-23 18:45:00'),
        (2, 8, '2023-10-07 18:50:00'),
        (14, 4, '2023-04-15 10:30:00'),
        (12, 2, '2023-05-20 15:45:00'),
        (10, 5, '2023-06-10 18:20:00'),
        (3, 3, '2023-07-05 12:00:00'),
        (6, 19, '2023-08-08 08:00:00'),
        (4, 9, '2023-09-30 10:30:00'),
        (2, 2, '2023-11-10 15:45:00'),
        (14, 5, '2023-12-05 18:20:00'),
        (10, 3, '2023-11-18 12:00:00'),
        (12, 5, '2023-10-22 18:00:00'),
        (17, 1, '2023-10-10 08:00:00'),
        (1, 2, '2023-10-23 17:45:00'),
        (5, 3, '2023-08-12 17:45:00'),
        (6, 5, '2023-12-25 17:45:00'),
        (9, 4, '2023-11-07 17:45:00'),
        (18, 5, '2023-12-01 19:15:00'),
        (10, 10, '2023-10-20 17:45:00'),
        (2, 16, '2023-10-15 18:30:00'),
        (3, 3, '2023-09-13 18:35:00'),
        (5, 1, '2023-12-22 18:40:00'),
        (8, 2, '2023-11-23 18:45:00'),
        (19, 2, '2023-10-08 19:30:00'),
        (2, 6, '2023-10-07 18:50:00'),
        (14, 17, '2023-04-15 10:30:00'),
        (12, 5, '2023-05-20 15:45:00'),
        (10, 1, '2023-06-10 18:20:00'),
        (17, 1, '2023-11-15 19:00:00'),
        (16, 17, '2023-11-20 19:30:00'),
        (3, 2, '2023-07-05 12:00:00'),
        (6, 3, '2023-08-08 08:00:00'),
        (4, 7, '2023-09-30 10:30:00'),
        (21, 3, '2023-12-10 20:00:00'),
        (2, 5, '2023-11-10 15:45:00'),
        (14, 1, '2023-12-05 18:20:00'),
        (10, 2, '2023-11-18 12:00:00'),
        (17, 8, '2023-10-10 08:00:00'),
        (1, 2, '2023-11-05 19:15:00'),
        (3, 1, '2023-12-01 20:00:00'),
        (4, 4, '2023-09-20 20:30:00'),
        (6, 9, '2023-10-29 21:00:00'),
        (14, 16, '2023-11-05 19:15:00'),
        (7, 5, '2023-11-15 21:30:00'),
        (8, 2, '2023-12-10 22:00:00'),
        (9, 10, '2023-11-25 22:30:00'),
        (20, 19, '2023-12-20 20:00:00'),
        (10, 9, '2023-12-30 23:00:00'),
        (11, 8, '2023-10-08 23:30:00'),
        (14, 2, '2023-11-07 18:15:00'),
        (15, 4, '2023-12-22 18:30:00'),
        (16, 3, '2023-10-29 18:45:00'),
        (20, 4, '2023-11-25 19:45:00'),
        (2, 1, '2023-10-15 18:30:00'),
        (3, 2, '2023-09-13 18:35:00'),
        (18, 18, '2023-12-05 19:45:00'),
        (5, 5, '2023-12-22 18:40:00'),
        (8, 3, '2023-11-23 18:45:00'),
        (10, 1, '2023-11-15 19:00:00'),
        (12, 5, '2023-12-01 19:15:00'),
        (14, 2, '2023-11-07 19:30:00'),
        (16, 4, '2023-12-25 19:45:00'),
        (18, 3, '2023-11-10 20:00:00'),
        (1, 11, '2023-07-20 18:00:00'),
        (5, 12, '2023-08-15 18:15:00'),
        (6, 13, '2023-09-20 18:30:00'),
        (10, 14, '2023-10-05 18:45:00'),
        (12, 15, '2023-10-20 19:00:00');


----
--Inserção Midia_Playlist
INSERT INTO Midia_Playlist (id_midia, id_playlist) VALUES
--Rock Antigo
        (1, 1),
        (2, 1),
        (10, 1),

--Jazz Relaxante
        (3, 2),
        (4, 2),

--Pop do Momento
        (5, 3),
        (8, 3),

--Clássicos Inesquecíveis
        (6, 4),
        (7, 4),

--Batidas Eletrônicas
        (9, 5),

--Indie Alternativo
        (11, 6),
        (12, 6),

--Rimas Marcantes
        (13, 7),
        (14, 7),

--Sabor Latino
        (15, 8),
        (16, 8);

---- 
--Inserção Músicas
INSERT INTO Musica (id_midia, id_album, letra) VALUES
        (1, 1, 'Welcome to the jungle, we´ve got fun and games
                We got everything you want honey, we know the names
                We are the people that can find whatever you may need
                If you got the money, honey, we got your disease
                In the jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n knees, knees
                Mwah, I, I wanna watch you bleed
                Welcome to the jungle, we take it day by day
                If you want it you´re gonna bleed but it´s the price to pay
                And you´re a very sexy girl who´s very hard to please
                You can taste the bright lights but you won´t get there for free
                In the jungle, welcome to the jungle
                Feel my, my, my, my serpentine
                Ooh, ah, I want to hear you scream
                Welcome to the jungle, it gets worse here every day
                You learn to live like an animal in the jungle where we play
                If you got a hunger for what you see you´ll take it eventually
                You can have anything you want but you better not take it from me
                In the jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n-knees, knees
                Mwah, I´m gonna watch you bleed
                And when you´re high, you never ever wanna come down
                So down, so down, so down, yeah
                You know where you are?
                You re in the jungle, baby, you re gonna die
                In the jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n-knees, knees
                In the jungle, welcome to the jungle
                Feel my, my, my my, serpentine
                Jungle, welcome to the jungle
                Watch it bring you to your sha-n-n-n-n-n-n-n-n-knees, knees
                Down In the jungle, welcome to the jungle
                Watch it bring you to you
                Its gonna bring you down, huh'),
        (2, 1, 'Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                (Take me home) oh, won´t you, please, take me home?
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                (Take me home) oh, won´t you, please, take me home?

                Just an urchin living under the street
                I´m a hard case that´s tough to beat
                I´m your charity case, so buy me something to eat
                I´ll pay you at another time
                Take it to the end of the line

                Rags to riches, or so they say
                You gotta keep pushing for the fortune and fame
                You know it´s, it´s all a gamble when it´s just a game
                You treat it like a capital crime
                Everybody´s doing their time

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home, yeah, yeah?
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home

                Strapped in the chair of the city´s gas chamber
                Why I´m here, I can´t quite remember
                The surgeon general says it´s hazardous to breathe
                I´d have another cigarette, but I can´t see
                Tell me who you´re gonna believe

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home, yeah, yeah
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home, yeah?

                So far away, so far away
                So far away, so far away

                Captain America´s been torn apart
                Now he´s a court jester with a broken heart
                He said, turn me around and take me back to the start
                I must be losing my mind, are you blind?
                I´ve seen it all a million times

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home, yeah, yeah
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home?

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Take me home, yeah, yeah
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home, home?

                Oh, I wanna go, I wanna know
                Oh, won´t you, please, take me home?
                I wanna see how good it can be
                Oh, won´t you, please, take me home?

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                (Take me home) oh, won´t you please take me home?
                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home?

                Take me down (oh, yeah), spin me ´round
                Oh, won´t you, please, take me home?
                I wanna see how good it can be
                Oh, won´t you, please, take me home?

                I wanna see how good it can be
                Oh, oh, take me home

                Take me down to the Paradise City
                Where the grass is green and the girls are pretty
                Oh, won´t you, please, take me home?
                I wanna go, I wanna know
                Oh, won´t you, please, take me home?
                Yeah, baby'),
        (4, 2, 'Back in black, I hit the sack
                I´ve been too long, I´m glad to be back
                Yes, I´m let loose from the noose
                That´s kept me hanging about

                I´m just looking at the sky cause it´s getting me high
                Forget the hearse ´cause I´ll never die
                I got nine lives, cat´s eyes
                Abusing every one of them and running wild

                ´Cause I´m back
                Yes, I´m back
                Well, I´m back
                Yes, I´m back

                Well, I´m back, back
                Well, I´m back in black
                Yes, I´m back in black

                Back in the back of a Cadillac
                Number one with a bullet, I´m a power pack
                Yes, I´m in a bang with a gang
                They´ve got to catch me if they want me to hang

                Cause I´m back on the track and I´m beating the flack
                Nobody´s gonna get me on another rap
                So look at me now, I´m just making my play
                Don´t try to push your luck, just get out of my way

                Cause I´m back
                Yes, I´m back
                Well, I´m back
                Yes, I´m back

                Well, I´m back, back
                Well, I´m back in black
                Yes, I´m back in black

                Well, I´m back
                Yes, I´m back
                Well, I´m back
                Yes, I´m back

                Well, I´m back, back
                Well, I´m back in black
                Yes, I´m back in black, yow

                Ah, yeah
                Oh, yeah
                Take my love
                Yeah, yeah
                Yeah
                Ah, hey, yeah
                Oh, yeah

                Well, I´m back (I´m back)
                Back (well, I´m back)
                Back (I´m back)
                Back (I´m back)

                Back (I´m back)
                Back, back in black
                Yes, I´m back in black

                Out of the sack'),
        (3, 3, 'Holdin'' me back
                Gravity''s holdin'' me back
                I want you to hold out the palm of your hand
                Why don''t we leave it at that?
                Nothin'' to say
                When everything gets in the way
                Seems you cannot be replaced
                And I''m the one who will stay, oh
                In this world, it''s just us
                You know it''s not the same as it was
                In this world, it''s just us
                You know it''s not the same as it was
                As it was, as it was
                You know it''s not the same
                Answer the phone
                "Harry, you''re no good alone
                Why are you sittin'' at home on the floor?
                What kind of pills are you on?"
                Ringin'' the bell
                And nobody''s comin'' to help
                Your daddy lives by himself
                He just wants to know that you''re well, oh
                In this world, it''s just us
                You know it''s not the same as it was
                In this world, it''s just us
                You know it''s not the same as it was
                As it was, as it was
                You know it''s not the same
                Go home, get ahead, light-speed internet
                I don''t wanna talk about the way that it was
                Leave America, two kids follow her
                I don''t wanna talk about who''s doin'' it first
                As it was
                You know it''s not the same as it was
                As it was, as it was'),
        (5, 4, 'I''ve been tryna call
                I''ve been on my own for long enough
                Maybe you can show me how to love, maybe
                I''m going through withdrawals
                You don''t even have to do too much
                You can turn me on with just a touch, baby
                I look around and
                Sin City''s cold and empty (oh)
                No one''s around to judge me (oh)
                I can''t see clearly when you''re gone
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch
                I said, ooh, I''m drowning in the night
                Oh, when I''m like this, you''re the one I trust
                (Hey, hey, hey)
                I''m running out of time
                ''Cause I can see the sun light up the sky
                So I hit the road in overdrive, baby, oh
                The city''s cold and empty (oh)
                No one''s around to judge me (oh)
                I can''t see clearly when you''re gone
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch
                I said, ooh, I''m drowning in the night
                Oh, when I''m like this, you''re the one I trust
                I''m just walking by to let you know (by to let you know)
                I can never say it on the phone (say it on the phone)
                Will never let you go this time (ooh)
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch
                (Hey, hey, hey)
                I said, ooh, I''m blinded by the lights
                No, I can''t sleep until I feel your touch'),
        (6, 5, 'Minha corrente e meu relógio têm branco e rosé
                Tudo um doce, uma bala de ver
                Eu não vim da roça, eu vou vingar os
                Que me vingaram só pra fuder você (oh)
                Desacredita? É só pagar pra ver (yeah)
                Quer um show? É só pagar pra ver (yeah)
                Uma vez tentaram me enrolar
                Ver meu corpo noticiado na TV
                Eu tenho conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah (grrah)
                Ye-yeah, eis a questão
                Eis a questão
                Had to stash the whole milli in the ceiling
                Need a visa for a bitch in brazilly (bitch)
                Mob boss, my wrist is like two fifty
                Might fly to Brazil and pull out the Bentley
                Show love to the kids I''m passing money
                Hundreads, fiftys make it rain twentys
                Overseas bitch saying make it rain on me
                I was in the trap before I had a chain on me
                Cuidado com a vida, mano (mano, yeah)
                A morte já é garantia, mano (mano, yeah)
                Cuidado onde você pisa, mano (mano)
                Pode ser armadilha, mano (mano)
                Três da manhã com a MAC na virilha
                E eu só vazo quando for dia, mano
                É como minha vó dizia, mano (ye-wo-yeah)
                Pra que ter vida se não vai ser pra ser vivida?
                Põe limão na ferida
                Coisa ruim vira notícia
                Sem espaço pra quem vacilar
                Coisa não ficar mais séria ainda
                Eu tenho conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah (grrah)
                Ye-yeah, eis a questão (yeah, yeah)
                Eis a questão (yeah, yeah)
                Just for rack, my niggas they getting you wet
                (Mob ties, mob ties)
                I feel like Al Capone, Big Meech
                Real so they give me love in the streets
                Like the way that she feel (way she feel)
                Took her home from Brazil (home from Brazil)
                Mayweather its hand like a pro boxer (pro boxer)
                Kick''er out the crib like I play soccer
                Freaky little bitch like to play doctor
                Mama walked in my room seen a real choppa
                We got big guns like the mafia (mafia)
                When you''re getting to the money
                Aain''t no stoppin'' you (stoppin'' you)
                They call me the kid like a toddler (toddler)
                Bullet proof car like a mobster (mobster)
                Eu tenho conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah (grrah)
                Ye-yeah, eis a questão
                Eis a questão
                Cuidado com a vida, mano
                Cuidado onde você pisa, mano
                Pode ser armadilha, mano
                Três da manhã com a MAC na virilha
                E eu só vazo quando for dia, mano
                É como minha vó dizia, mano
                São conexões de máfia
                Ninguém nunca vai me atrasar
                Condições especiais
                Não se compara, não somos iguais
                Ficção, na TV, yeah
                Vai matar ou morrer? Yeah
                Eis a questão, eis a questão'),
        (7, 1, 'Quando eu digo que deixei de te amar
                É porque eu te amo
                Quando eu digo que não quero mais você
                É porque eu te quero
                Eu tenho medo de te dar meu coração
                E confessar que eu estou em tuas mãos
                Mas não posso imaginar
                O que vai ser de mim
                Se eu te perder um dia

                Eu me afasto e me defendo de você
                Mas depois me entrego
                Faço tipo, falo coisas que eu não sou
                Mas depois eu nego
                Mas a verdade
                É que eu sou louco por você
                E tenho medo de pensar em te perder
                Eu preciso aceitar que não dá mais
                Pra separar as nossas vidas

                E nessa loucura de dizer que não te quero
                Vou negando as aparências
                Disfarçando as evidências
                Mas pra que viver fingindo
                Se eu não posso enganar meu coração?
                Eu sei que te amo!

                Chega de mentiras
                De negar o meu desejo
                Eu te quero mais que tudo
                Eu preciso do seu beijo
                Eu entrego a minha vida
                Pra você fazer o que quiser de mim
                Só quero ouvir você dizer que sim!

                Diz que é verdade, que tem saudade
                Que ainda você pensa muito em mim
                Diz que é verdade, que tem saudade
                Que ainda você quer viver pra mim'),
        (8, 7, 'Yeah
                7:30 in the night, yeah
                Ooh-ooh, ooh
                I get those goosebumps every time, yeah, you come around, yeah
                You ease my mind, you make everything feel fine
                Worried ''bout those comments, I''m way too numb, yeah
                It''s way too dumb, yeah
                I get those goosebumps every time, I need the Heimlich
                Throw that to the side, yeah
                I get those goosebumps every time, yeah, when you''re not around (straight up)
                When you throw that to the side, yeah (it''s lit)
                I get those goosebumps every time, yeah
                7-1-3 through the 2-8-1, yeah I''m ridin''
                Why they on me?
                Why they on me? I''m flyin'', sippin'' low-key
                I be sippin'' low-key in Onyx, rider, rider
                When I''m pullin'' up right beside ya
                Pop star, lil'' Mariah
                When I text, kick game, knowledge
                Throw a stack on the Bible
                Never Snapchat or took molly
                She fall through plenty, her and all her ginnies, yeah
                We at the top floor, right there off Doheny, yeah
                Oh no, I can''t fuck with y''all, yeah
                When I''m with my squad I cannot do no wrong, yeah
                Saucin'' in the city, don''t get misinformed, yeah
                They gon'' pull up on you (brrt, brrt, brrt)
                Yeah, we gon'' do some things, some things you can''t relate
                Yeah, ''cause we from a place, a place you cannot stay
                Oh, you can''t go, oh, I don''t know
                Oh, back the fuck up off me (brrt, brrt, brrt)
                I get those goosebumps every time, yeah, you come around, yeah
                You ease my mind, you make everything feel fine
                Worried ''bout those comments, I''m way too numb, yeah
                It''s way too dumb, yeah
                I get those goosebumps every time, I need the Heimlich
                Throw that to the side, yeah
                I get those goosebumps every time, yeah, when you''re not around
                When you throw that to the side, yeah
                I get those goosebumps every time
                Uh, I wanna press my like, yeah, I wanna press my
                I want a green light, I wanna be like
                I wanna press my line, yeah
                I wanna to take that ride, yeah
                I''m gonna press my line
                I want a green light, I wanna be like, I wanna press my
                Mama, dear, spare your feelings
                I''m relivin'' moments, peelin'' more residual
                I can buy the building, burn the building, take your bitch
                Rebuild the building just to fuck some more
                I can justify my love for you
                And touch the sky for God to stop debatin'' war
                Put the pussy on a pedestal (ayy)
                Put the pussy on a high horse
                That pussy to die for
                That pussy to die for
                Peter Piper, picked a pepper
                So I could pick your brain and put your heart together
                We depart the shady parts and party hard, the diamonds yours
                The coupe forever
                My best shot, just might shoot forever like (brrt)
                I get those goosebumps every time, yeah, you come around, yeah
                You ease my mind, you make everything feel fine
                Worried ''bout those comments, I''m way too numb, yeah
                It''s way too dumb, yeah
                I get those goosebumps every time, I need the Heimlich
                Throw that to the side, yeah
                I get those goosebumps every time, yeah, when you''re not around
                When you throw that to the side, yeah
                I get those goosebumps every time'),
        (9, 8, 'There''s a stranger in my bed
                There''s a pounding in my head
                Glitter all over the room
                Pink flamingos in the pool
                I smell like a minibar
                DJ''s passed out in the yard
                Barbies on the barbecue
                This a hickey or a bruise?
                Pictures of last night ended up online, I''m screwed
                Oh, well
                It''s a blacked out blur, but I''m pretty sure it ruled
                Damn
                Last Friday night
                Yeah, we danced on tabletops, and we took too many shots
                Think we kissed, but I forgot last Friday night
                Yeah, we maxed our credit cards and got kicked out of the bar
                So we hit the boulevard last Friday night
                We went streaking in the park, skinny-dipping in the dark
                Then had a ménage à trois last Friday night
                Yeah, I think we broke the law, always say we''re gonna stop-op, oh-whoa
                But this Friday night
                Do it all again
                But this Friday night
                Do it all again
                Trying to connect the dots
                Don''t know what to tell my boss
                Think the city towed my car
                Chandelier is on the floor
                Ripped my favorite party dress
                Warrant''s out for my arrest
                Think I need a ginger ale
                That was such an epic fail
                Pictures of last night ended up online, I''m screwed
                Oh, well
                It''s a blacked out blur, but I''m pretty sure it ruled
                Damn
                Last Friday night
                Yeah, we danced on tabletops, and we took too many shots
                Think we kissed, but I forgot last Friday night
                Yeah, we maxed our credit cards and got kicked out of the bar
                So we hit the boulevard last Friday night
                We went streaking in the park, skinny-dipping in the dark
                Then had a ménage à trois last Friday night
                Yeah, I think we broke the law, always say we''re gonna stop-op, oh-whoa
                But this Friday night
                Do it all again (do it all again)
                But this Friday night
                Do it all again (do it all again)
                But this Friday night
                Last Friday night
                Yeah, we danced on tabletops, and we took too many shots
                Think we kissed, but I forgot last Friday night
                Yeah, we maxed our credit cards and got kicked out of the bar
                So we hit the boulevard last Friday night
                We went streaking in the park, skinny-dipping in the dark
                Then had a ménage à trois last Friday night
                Yeah, I think we broke the law, always say we''re gonna stop-op, oh-whoa
                But this Friday night
                Do it all again'),
        (10, 10, 'End of passion play, crumbling away
                I''m your source of self-destruction
                Veins that pump with fear, sucking darkest clear
                Leading on your death''s construction
                Taste me, you will see
                More is all you need
                Dedicated to
                How I''m killing you
                Come crawling faster
                Obey your master
                Your life burns faster
                Obey your master, master
                Master of puppets, I''m pulling your strings
                Twisting your mind and smashing your dreams
                Blinded by me, you can''t see a thing
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Needlework the way, never you betray
                Life of death becoming clearer
                Pain monopoly, ritual misery
                Chop your breakfast on a mirror
                Taste me, you will see
                More is all you need
                Dedicated to
                How I''m killing you
                Come crawling faster
                Obey your master
                Your life burns faster
                Obey your master, master
                Master of puppets, I''m pulling your strings
                Twisting your mind and smashing your dreams
                Blinded by me, you can''t see a thing
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Just call my name, ''cause I''ll hear you scream
                Master, master (master)
                Where''s the dreams that I''ve been after?
                (Master, master)
                You promised only lies
                (Laughter, laughter)
                All I hear or see is laughter
                (Laughter, laughter)
                Laughing at my cries
                Fix me!
                Hell is worth all that, natural habitat
                Just a rhyme without a reason
                Never-ending maze, drift on numbered days
                Now your life is out of season
                I will occupy
                I will help you die
                I will run through you
                Now I rule you too
                Come crawling faster
                Obey your master
                Your life burns faster
                Obey your master, master
                Master of puppets, I''m pulling your strings
                Twisting your mind and smashing your dreams
                Blinded by me, you can''t see a thing
                Just call my name, ''cause I''ll hear you scream
                Master, master
                Just call my name, ''cause I''ll hear you scream
                Master, master'),
        (11, 5, 'Depois que eu conheci o Mandela
                Depois que eu vi como ela dança
                Depois que eu vi como ela zoa
                Depois que eu vi como ela se assanha

                Só agora que eu fui perceber

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer

                Namorar pra quê?
                Se amarrar pra quê?
                Prefiro tá solteiro que eu sei
                Que elas vão querer'),
        (12, 12, 'É que não sobrou espaço pra outro alguém
                Minha saudade só cabe no teu abraço, no de mais ninguém
                Tenho dó de quem me conhecer agora
                Que todo amor eu tô jogando fora
                E qualquer um que bate aqui nesse meu coração
                Não passa nem da porta
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Leva mal não
                Só tem espaço pra você no coração
                É que não sobrou espaço pra outro alguém
                Minha saudade só cabe no teu abraço, no de mais ninguém
                Tenho dó de quem me conhecer agora
                Que todo amor eu tô jogando fora
                E qualquer um que bate aqui nesse meu coração
                Não passa nem da porta
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém (se que saber se eu quero outro alguém)
                Nem de graça, nem de graça
                Se essa boca não beijasse tão bem
                Se esse abraço não fosse tão massa
                Se que saber se eu quero outro alguém
                Nem de graça, nem de graça
                Leva mal não
                Só tem espaço pra você no coração'),
        (13, 14, 'Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca
                Queimando profundo, o sol me cobriu
                Atiçando labaredas na minha mente
                Caindo no mundo
                Pelada no rio, meu bem
                Eu quero esse clima quente
                Só o calor deixa o meu corpo assim
                Bem de leve e bem melhor de cor
                Meu humor não pode ver um frio, hã-hã, hã-hã
                Só o sol sabe me querer bem
                Brisa de Verão me dá mais cor
                Meu amor, vem me molhar, neném, aham, aham
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca no chão, aha-hã
                Ai, que delícia o verão
                A gente mostra o ombrim
                A gente brinca
                Queimando profundo, o sol me cobriu
                Atiçando labaredas na minha mente
                Caindo no mundo
                Pelada no rio, meu bem
                Eu quero esse clima quente
                Só o calor deixa o meu corpo assim
                Bem de leve e bem melhor de cor
                Meu humor não pode ver um frio, hã-hã, hã-hã
                Só o sol sabe me querer bem
                Brisa de Verão me dá mais cor
                Meu amor, vem me molhar, neném, aham, aham
                Hmm, isso aqui é bom de arrebitar, viu?
                Aham, aham
                Ow, me chama pra tomar banho na piscina da sua casa?
                Aham, aham
                Ai!
                Aham, aham
                Nossa, que calor!
                Aí, que delícia o verão
                A gente mostra o ombrim
                A gente brinca'),
        (14, 2, 'Look, I was gonna go easy on you not to hurt your feelings
                But I''m only going to get this one chance (six minutes-, six minutes-)
                Something''s wrong, I can feel it (six minutes, Slim Shady, you''re on!)
                Just a feeling I''ve got, like something''s about to happen, but I don''t know what
                If that means what I think it means, we''re in trouble, big trouble
                And if he is as bananas as you say, I''m not taking any chances
                You are just what the doc ordered
                I''m beginnin'' to feel like a Rap God, Rap God
                All my people from the front to the back nod, back nod
                Now, who thinks their arms are long enough to slap box, slap box?
                They said I rap like a robot, so call me Rap-bot
                But for me to rap like a computer, it must be in my genes
                I got a laptop in my back pocket
                My pen''ll go off when I half-cock it
                Got a fat knot from that rap profit
                Made a livin'' and a killin'' off it
                Ever since Bill Clinton was still in office
                With Monica Lewinsky feelin'' on his nutsack
                I''m an MC still as honest
                But as rude and as indecent as all hell
                Syllables, skill-a-holic (kill ''em all with)
                This flippity dippity-hippity hip-hop
                You don''t really wanna get into a pissin'' match
                With this rappity brat, packin'' a MAC in the back of the Ac''
                Backpack rap crap, yap-yap, yackety-yack
                And at the exact same time, I attempt these lyrical acrobat stunts while I''m practicin'' that
                I''ll still be able to break a motherfuckin'' table
                Over the back of a couple of faggots and crack it in half
                Only realized it was ironic, I was signed to Aftermath after the fact
                How could I not blow? All I do is drop F-bombs
                Feel my wrath of attack
                Rappers are havin'' a rough time period, here''s a maxi pad
                It''s actually disastrously bad for the wack
                While I''m masterfully constructing this masterpièce
                ''Cause I''m beginnin'' to feel like a Rap God, Rap God
                All my people from the front to the back nod, back nod
                Now, who thinks their arms are long enough to slap box, slap box?
                Let me show you maintainin'' this shit ain''t that hard, that hard
                Everybody want the key and the secret to rap immortality like Ι have got
                Well, to be truthful the blueprint''s
                Simply rage and youthful exuberance
                Everybody loves to root for a nuisance
                Hit the Earth like an asteroid
                Did nothing but shoot for the Moon since (pew!)
                MCs get taken to school with this music
                ''Cause I use it as a vehicle to "Bus the rhyme"
                Now I lead a new school full of students
                Me? I''m a product of Rakim
                Lakim Shabazz, 2Pac, N.W.A, Cube, hey Doc, Ren
                Yella, Eazy, thank you, they got Slim
                Inspired enough to one day grow up, blow up and be in a position
                To meet Run-D.M.C., induct them
                Into the motherfuckin'' Rock and Roll Hall of Fame
                Even though I''ll walk in the church and burst in a ball of flames
                Only Hall of Fame I''ll be inducted in is the alcohol of fame
                On the wall of shame
                You fags think it''s all a game, ''til I walk a flock of flames
                Off a plank and, tell me what in the fuck are you thinkin''?
                Little gay-lookin'' boy
                So gay, I can barely say it with a straight face, lookin'' boy (ha-ha!)
                You''re witnessin'' a mass-occur
                Like you''re watching a church gathering take place, lookin'' boy
                "Oy vey, that boy''s gay!" That''s all they say, lookin'' boy
                You get a thumbs up, pat on the back
                And a "Way to go" from your label every day, lookin'' boy
                Hey, lookin'' boy! What you say, lookin'' boy?
                I get a "Hell, yeah" from Dre, lookin'' boy
                I''ma work for everything I have, never asked nobody for shit
                Get outta my face, lookin'' boy!
                Basically, boy, you''re never gonna be capable
                Of keepin'' up with the same pace, lookin'' boy, ''cause-
                I''m beginnin'' to feel like a Rap God, Rap God
                All my people from the front to the back nod, back nod
                The way I''m racin'' around the track, call me NASCAR, NASCAR
                Dale Earnhardt of the trailer park, the White Trash God
                Kneel before General Zod
                This planet''s Krypton-, no, Asgard, Asgard
                So you''ll be Thor and I''ll be Odin
                You rodent, I''m omnipotent
                Let off, then I''m reloadin''
                Immediately with these bombs I''m totin''
                And I should not be woken
                I''m the walkin'' dead, but I''m just a talkin'' head, a zombie floatin''
                But I got your mom deep-throatin''
                I''m out my Ramen Noodle
                We have nothin'' in common, poodle
                I''m a Doberman, pinch yourself in the arm and pay homage, pupil
                It''s me, my honesty''s brutal
                But it''s honestly futile if I don''t utilize what I do though
                For good at least once in a while
                So I wanna make sure somewhere in this chicken scratch I scribble and doodle enough rhymes
                To maybe try to help get some people through tough times
                But I gotta keep a few punchlines
                Just in case ''cause even you unsigned
                Rappers are hungry lookin'' at me like it''s lunchtime
                I know there was a time where once I
                Was king of the underground
                But I still rap like I''m on my Pharoahe Monch grind
                So I crunch rhymes, but sometimes when you combine
                Appeal with the skin color of mine
                You get too big and here they come tryin''
                To censor you like that one line
                I said on "I''m Back" from The Mathers LP 1 when I
                Tried to say I''ll take seven kids from Columbine
                Put ''em all in a line, add an AK-47, a revolver and a .9
                See if I get away with it now that I ain''t as big as I was, but I''m
                Morphin'' into an immortal, comin'' through the portal
                You''re stuck in a time warp from 2004 though
                And I don''t know what the fuck that you rhyme for
                You''re pointless as Rapunzel with fuckin'' cornrows
                You write normal? Fuck being normal!
                And I just bought a new raygun from the future
                Just to come and shoot ya, like when Fabolous made Ray J mad
                ''Cause Fab said he looked like a fag at Mayweather''s pad
                Singin'' to a man while he played piano
                Man, oh man, that was a 24-7 special on the cable channel
                So Ray J went straight to the radio station
                The very next day, "Hey Fab, I''ma kill you!"
                Lyrics comin'' at you at supersonic speed (J.J. Fad)
                Uh, summa-lumma, dooma-lumma, you assumin'' Im a human
                What I gotta do to get it through to you I''m superhuman?
                Innovative and I''m made of rubber so that anything
                You say is ricochetin'' off of me, and it''ll glue to you and
                I''m devastating, more than ever demonstrating
                How to give a motherfuckin'' audience a feeling like it''s levitating
                Never fading, and I know the haters are forever waiting
                For the day that they can say I fell off, they''ll be celebrating
                ''Cause I know the way to get ''em motivated
                I make elevating music, you make elevator music
                "Oh, he''s too mainstream"
                Well, that''s what they do when they get jealous, they confuse it
                "It''s not hip-hop, it''s pop, " ''cause I found a hella way to fuse it
                With rock, shock rap with Doc
                Throw on "Lose Yourself" and make ''em lose it
                I don''t know how to make songs like that
                I don''t know what words to use
                Let me know when it occurs to you
                While I''m rippin'' any one of these verses that versus you
                It''s curtains, I''m inadvertently hurtin'' you
                How many verses I gotta murder to
                Prove that if you were half as nice, your songs you could sacrifice virgins too?
                Ugh, school flunky, pill junkie
                But look at the accolades these skills brung me
                Full of myself, but still hungry
                I bully myself ''cause I make me do what I put my mind to
                And I''m a million leagues above you
                Ill when I speak in tongues, but it''s still tongue-in-cheek, fuck you
                I''m drunk, so, Satan, take the fucking wheel
                I''ma sleep in the front seat
                Bumpin'' Heavy D and the Boyz, still "Chunky but Funky"
                But in my head, there''s something I can feel tugging and struggling
                Angels fight with devils and here''s what they want from me
                They''re askin'' me to eliminate some of the women hate
                But if you take into consideration the bitter hatred
                I have, then you may be a little patient
                And more sympathetic to the situation
                And understand the discrimination
                But fuck it, life''s handin'' you lemons? Make lemonade then!
                But if I can''t batter the women
                How the fuck am I supposed to bake them a cake then?
                Don''t mistake him for Satan; it''s a fatal mistake
                If you think I need to be overseas and take a vacation
                To trip a broad, and make her fall on her face and
                Don''t be a retard, be a king? Think not
                Why be a king when you can be a god?'),
        (15, 13, 'A garrafa precisa do copo
                O copo precisa da mesa
                A mesa precisa de mim
                E eu preciso da cerveja
                Igual eu preciso dele
                Na minha vida
                Mas quanto mais eu vou atrás
                Mais ele pisa
                Então já que é assim
                Se por ele eu sofro sem pausa
                Quem quiser me amar
                Também vai sofrer nessa bagaça
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Todo mundo vai sofrer boa vista
                Aqui não!
                Igual eu preciso dele
                Na minha vida
                Mas quanto mais eu vou atrás
                Mais ele pisa
                Então já que é assim
                Se por ele eu sofro sem pausa
                Quem quiser me amar
                Também vai sofrer nessa bagaça
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Só vocês assim, vem
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Quem eu quero, não me quer
                Quem me quer, não vou querer
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer
                Ninguém vai sofrer sozinho
                Marília ta aqui com vocês
                Ninguém vai sofrer sozinho
                Todo mundo vai sofrer'),
        (16, 9, 'Can''t you see I''m easily bothered by persistence?
                One step from lashing out at you
                You want in, to get under my skin and call yourself a friend
                I''ve got more friends like you, what do I do?
                Is there no standard anymore?
                What it takes, who I am, where I''ve been, belong
                You can''t be something you''re not
                Be yourself, by yourself, stay away from me
                A lesson learned in life
                Known from the dawn of time
                Respect, walk, what did you say?
                Respect, walk
                Are you talkin'' to me? Are you talkin'' to me?
                Run your mouth when I''m not around, it''s easy to achieve
                You cry to weak friends that sympathize
                Can you hear the violins playing your song?
                Those same friends tell me your every word
                Is there no standard anymore?
                What it takes, who I am, where I''ve been, belong
                You can''t be something you''re not
                Be yourself, by yourself, stay away from me
                A lesson learned in life
                Known from the dawn of time
                Respect, walk, what did you say?
                Respect, walk, are you talkin'' to me?
                Respect, walk, what did you say?
                Respect, walk
                Are you talkin'' to me? Are you talkin'' to me?
                No way, punk
                Respect, walk, what did you say?
                Respect, walk, are you talkin'' to me?
                Respect, walk, what did you say?
                Respect, walk
                Are you talkin'' to me? Are you talkin'' to me?
                Walk on home, boy'),
        (26, 8, 'Do you ever feel like a plastic bag
                Drifting through the wind, wanting to start again?
                Do you ever feel, feel so paper thin
                Like a house of cards, one blow from cavin'' in?
                Do you ever feel already buried deep?
                Six feet under screams, but no one seems to hear a thing
                Do you know that there''s still a chance for you?
                ''Cause there''s a spark in you
                You just gotta ignite the light
                And let it shine
                Just own the night
                Like the Fourth of July
                ''Cause baby, you''re a firework
                Come on, show ''em what you''re worth
                Make ''em go, "Oh, oh, oh"
                As you shoot across the sky
                Baby, you''re a firework
                Come on, let your colors burst
                Make ''em go, "Oh, oh, oh"
                You''re gonna leave ''em all in awe, awe, awe
                You don''t have to feel like a waste of space
                You''re original, cannot be replaced
                If you only knew what the future holds
                After a hurricane comes a rainbow
                Maybe a reason why all the doors are closed
                So you could open one that leads you to the perfect road
                Like a lightning bolt, your heart will glow
                And when it''s time, you''ll know
                You just gotta ignite the light
                And let it shine
                Just own the night
                Like the Fourth of July
                ''Cause baby, you''re a firework
                Come on, show ''em what you''re worth
                Make ''em go, "Oh, oh, oh"
                As you shoot across the sky
                Baby, you''re a firework
                Come on, let your colors burst
                Make ''em go, "Oh, oh, oh"
                You''re gonna leave ''em all in awe, awe, awe
                Boom, boom, boom
                Even brighter than the moon, moon, moon
                It''s always been inside of you, you, you
                And now it''s time to let it through
                ''Cause baby, you''re a firework
                Come on, show ''em what you''re worth
                Make ''em go, "Oh, oh, oh"
                As you shoot across the sky
                Baby, you''re a firework
                Come on, let your colors burst
                Make ''em go, "Oh, oh, oh"
                You''re gonna leave ''em all in awe, awe, awe
                Boom, boom, boom
                Even brighter than the moon, moon, moon
                Boom, boom, boom
                Even brighter than the moon, moon, moon'),
        (27, 16, 'When you try your best, but you don''t succeed
                When you get what you want, but not what you need
                When you feel so tired, but you can''t sleep
                Stuck in reverse
                And the tears come streaming down your face
                When you lose something you can''t replace
                When you love someone, but it goes to waste
                Could it be worse?
                Lights will guide you home
                And ignite your bones
                And I will try to fix you
                And high up above, or down below
                When you''re too in love to let it go
                But if you never try, you''ll never know
                Just what you''re worth
                Lights will guide you home
                And ignite your bones
                And I will try to fix you
                Tears stream down your face
                When you lose something you cannot replace
                Tears stream down your face, and I
                Tears stream down your face
                I promise you I will learn from my mistakes
                Tears stream down your face, and I
                Lights will guide you home
                And ignite your bones
                And I will try to fix you'),
        (28, 2, 'I''m rolling thunder, pouring rain
                I''m coming on like a hurricane
                My lightning''s flashing across the sky
                You''re only young, but you''re gonna die
                I won''t take no prisoners, won''t spare no lives
                Nobody''s putting up a fight
                I got my bell, I''m gonna take you to hell
                I''m gonna get ya, Satan get ya
                Hells bells
                Hells bells, you got me ringing
                Hells bells, my temperature''s high
                Hells bells
                I''ll give you black sensations up and down your spine
                If you''re into evil, you''re a friend of mine
                See the white light flashing as I split the night
                Cos if good''s on the left then I''m sticking to the right
                I won''t take no prisoners, won''t spare no lives
                Nobody''s puttin'' up a fight
                I got my bell, I''m gonna take you to hell
                I''m gonna get ya, Satan get ya
                Hells bells
                Hells bells, you got me ringing
                Hells bells, my temperature''s high
                Hells bells
                Hells bells, Satan''s coming to you
                Hells bells, he''s ringing them now
                Those hells bells, the temperature''s high
                Hells bells, across the sky
                Hells bells, they''re taking you down
                Hells bells, they''re dragging you down
                Hells bells, gonna split the night
                Hells bells, there''s no way to fight
                Hells bells'),
        (29, 1, 'Loaded like a freight train
                Flyin'' like an aeroplane
                Feelin'' like a space brain
                One more time tonight (look out)
                Well, I''m a west coast struttin''
                One bad mother
                Got a rattlesnake suitcase under my arm
                Said I''m a mean machine
                Been drinkin'' gasoline
                And honey you can make my motor hum
                I got one chance left
                In a nine live cat
                I got a dog eat dog sly smile
                I got a molotov cocktail with a match to go
                I smoke my cigarette with style
                And I can tell you honey
                You can make my money tonight
                Wake up late, honey put on your clothes
                And take your credit card to the liquor store
                Well that''s one for you and two for me by tonight
                I''ll be loaded like a freight train
                Flyin'' like an aeroplane
                Feelin'' like a space brain
                One more time tonight
                I''m on the night train, bottoms up
                I''m on the night train, fill my cup
                I''m on the night train, ready to crash and burn
                I never learn
                I''m on the night train, I love that stuff
                I''m on the night train, and I can never get enough
                I''m on the night train, never to return, no
                Loaded like a freight train
                Flyin'' like an aeroplane
                Speedin'' like a space brain
                One more time tonight
                I''m on the night train
                And I''m lookin'' for some
                I''m on the night train
                So''s I can leave this slum
                I''m on the night train
                And I''m ready to crash and burn
                Night train, bottoms up
                I''m on the night train, fill my cup
                I''m on the night train
                Oh oh oh ohh oh yeah
                I''m on the night train
                Love that stuff
                Ooh I''m on the night train
                And I can never get enough
                Ridin'' the night train
                I guess I
                I guess, I guess, I guess
                I never learn
                On the night train
                Float me home
                Ooh, I''m on the night train
                Ridin'' the night train
                Never to return
                Night train'),
        (30, 4, 'Ooh
                Na-na, yeah
                I saw you dancing in a crowded room
                You look so happy when I''m not with you
                But then you saw me, caught you by surprise
                A single teardrop falling from your eye
                I don''t know why I run away
                I''ll make you cry when I run away
                You could''ve asked me why I broke your heart
                You could''ve told me that you fell apart
                But you walked past me like I wasn''t there
                And just pretended like you didn''t care
                I don''t know why I run away
                I''ll make you cry when I run away
                Take me back ''cause I wanna stay
                Save your tears for another
                Save your tears for another day
                Save your tears for another day
                So, I made you think that I would always stay
                I said some things that I should never say
                Yeah, I broke your heart like someone did to mine
                And now you won''t love me for a second time
                I don''t know why I run away, oh, girl
                Said I''ll make you cry when I run away
                Girl, take me back ''cause I wanna stay
                Save your tears for another
                I realize that I''m much too late
                And you deserve someone better
                Save your tears for another day (ooh, yeah)
                Save your tears for another day (yeah)
                I don''t know why I run away
                I''ll make you cry when I run away
                Save your tears for another day, ooh, girl (ah)
                I said save your tears for another day (ah)
                Save your tears for another day (ah)
                Save your tears for another day (ah)'),
        (31, 2, 'All you women who want a man of the street
                But don''t know which way you wanna turn
                Just keep a-comin'', and put your hand out to me
                ''Cause I''m the one who''s gonna make you burn
                I''m gonna take you down
                Oh, down, down, down
                So, don''t you fool around
                I''m gonna pull it, pull it, pull the trigger
                Shoot to thrill, play to kill
                Too many women with too many pills, yeah
                Shoot to thrill, play to kill
                I got my gun at the ready, gonna fire at will, yeah
                I''m like evil, I get under your skin
                Just like a bomb that''s ready to blow
                ''Cause I''m illegal, I got everything
                That all you women might need to know
                I''m gonna take you down
                Yeah, down, down, down
                So, don''t you fool around
                I''m gonna pull it, pull it, pull the trigger
                Shoot to thrill, play to kill
                Too many women with too many pills, said
                Shoot to thrill, play to kill
                I got my gun at the ready, gonna fire at will
                ''Cause I shoot to thrill, and I''m ready to kill
                I can''t get enough and I can''t get my fill
                I shoot to thrill, play to kill
                Yeah
                Pull the trigger, pull it
                Pull it, pull it, pull the trigger!
                Oh
                Shoot to thrill, play to kill
                Too many women with too many pills, I said
                Shoot to thrill, play to kill
                I got my gun at the ready, going to fire at will
                ''Cause I shoot to thrill and I''m ready to kill
                And I can''t get enough and I can''t get my fill
                ''Cause I shoot to thrill, play to kill
                Yeah
                Shoot you down, yeah
                I''m gonna get you down to the bottom, girl
                Shoot you, I''m gonna shoot you
                Ooh, yeah
                Yeah, yeah
                I''m gonna shoot you down, yeah, yeah
                I''m gonna get you down
                Down, down, down, down
                Shoot you, shoot you, shoot you, shoot you down
                Shoot you, shoot you, shoot you down
                Aah, aah, aah, aah, aah, aah yeah
                I''m gonna shoot to thrill
                Play to kill
                Shoot to thrill'),
        (32, 15, 'Look at the stars
                Look how they shine for you
                And everything you do
                Yeah, they were all yellow
                I came along
                I wrote a song for you
                And all the things you do
                And it was called Yellow
                So then I took my turn
                Oh, what a thing to have done
                And it was all yellow
                Your skin, oh yeah, your skin and bones
                Turn into something beautiful
                And you know, you know I love you so
                You know I love you so
                I swam across
                I jumped across for you
                Oh, what a thing to do
                ''Cause you were all yellow
                I drew a line
                I drew a line for you
                Oh, what a thing to do
                And it was all yellow
                And your skin, oh yeah, your skin and bones
                Turn into something beautiful
                And you know, for you, I''d bleed myself dry
                For you, I''d bleed myself dry
                It''s true
                Look how they shine for you
                Look how they shine for you
                Look how they shine for
                Look how they shine for you
                Look how they shine for you
                Look how they shine
                Look at the stars
                Look how they shine for you
                And all the things that you do');


---- 
--Inserção Generos Musicais
INSERT INTO Genero (id_genero, nome) VALUES
        (1, 'Rock'),
        (2, 'Pop'),
        (3, 'Funk'),
        (4, 'Sertanejo'),
        (5, 'Pagode'),
        (6, 'Metal'),
        (8, 'Rap'),
        (9, 'Trap');


----
--Inserção de Relação entre Músicas e Gêneros
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
    (14, 8), -- Rap God - Eminem - Rap
    (15, 3), -- Todo Mundo Vai Sofrer - MC Kekel - Funk
    (16, 6), -- Walk - Pantera - Metal
    (26, 2), -- Firework - Coldplay - Pop
    (27, 2), -- Fix You - Coldplay - Pop
    (28, 1), -- Hells Bells - AC/DC - Rock
    (29, 1), -- Nightrain - Guns n Roses - Rock
    (30, 2), -- Save Your Tears - The Wekend - Pop
    (31, 1), -- Shoot To Thrill - AC/DC - Rock
    (32, 2); -- Yellow - Coldplay - Pop


---- 
--Inserção Podcaster
INSERT INTO Podcaster (id_podcaster, nome, descricao) VALUES
        (1, 'Podpah', 'O podcast mais zika da internet.'),
        (2, 'Hipsters Ponto Tech', 'Discussoes sobre tecnologia, programacao, design, startups e as ultimas tecnologias.'),
        (3, 'NerdCast', 'O mundo vira piada no Jovem Nerd.'),
        (4, 'Flow Podcast', 'A melhor conversa que voce vai ouvir.');


----
--Inserção Podcast
INSERT INTO Podcast (id_midia, id_podcaster) VALUES
        (17, 1),
        (18, 1),
        (19, 2),
        (20, 3),
        (21, 4),
        (22, 4),
        (23, 4),
        (24, 1),
        (25, 1);


---- 
--Inserção Temas de Podcast
INSERT INTO Tema (id_tema, descricao) VALUES
        (1, 'Politica'),
        (2, 'Tecnologia'),
        (3, 'Geek'),
        (4, 'Jornalistico'),
        (5, 'RPG'),
        (6, 'Entrevista');


----
--Inserção Podcast_Tema
INSERT INTO Podcast_Tema (id_midia, id_tema) VALUES
        (17, 6),
        (18, 6),
        (19, 2),
        (20, 3),
        (21, 6),    
        (22, 6),        
        (23, 6),        
        (24, 6),        
        (25, 6);        


