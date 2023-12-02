-- Deleta podcasts do Flow
DELETE FROM Podcast_Tema WHERE id_midia IN (
    SELECT id_midia
    FROM Midia
    WHERE nome LIKE '%Flow%');
-- Deleta o tema jornalístico
DELETE FROM Podcast_Tema WHERE id_tema IN (
    SELECT id_tema
    FROM Tema
    WHERE descricao = 'Jornalistico');
----

-- Deleta o tema jornalístico
DELETE FROM Tema WHERE id_tema IN (
    SELECT id_tema
    FROM Tema
    WHERE descricao = 'Jornalistico');
----

-- Deleta podcasts do Flow
DELETE FROM Podcast WHERE id_midia IN (
    SELECT id_midia
    FROM Midia
    WHERE nome LIKE '%Flow%');
----

DELETE FROM Podcaster
WHERE nome = 'Flow Podcast';
----

-- Deleta músicas com essa palavra na letra
DELETE FROM Genero_Musica WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%fuck%');
-- Deleta o gênero sertanejo
DELETE FROM Genero_Musica WHERE id_genero IN (
    SELECT id_genero
    FROM Genero
    WHERE nome = 'Sertanejo');
--
DELETE FROM Genero_Musica WHERE id_midia IN (
    SELECT mu.id_midia
    FROM Musica AS mu
    JOIN Album AS al ON mu.id_album = al.id_album
    WHERE al.ano = 1987
);
--
DELETE FROM Genero_Musica 
WHERE id_midia IN (
    SELECT Musica.id_midia
    FROM Musica
    INNER JOIN Album ON Musica.id_album = Album.id_album
    INNER JOIN Artista ON Album.id_artista = Artista.id_artista
    WHERE Artista.nome = 'Coldplay'
);
----

-- Deleta o gênero sertanejo
DELETE FROM Genero WHERE id_genero IN (
    SELECT id_genero
    FROM Genero
    WHERE nome = 'Sertanejo');
----

-- Deleta músicas com essa palavra na letra
DELETE FROM Musica WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%fuck%');
--
DELETE FROM Musica WHERE id_album IN (
    SELECT id_album
    FROM Album
    WHERE ano = 1987);
--
DELETE FROM Musica WHERE id_album IN (
    SELECT id_album
    FROM Album
    WHERE id_artista = (
        SELECT id_artista
        FROM Artista
        WHERE nome = 'Coldplay'
        )
);
----

-- Deleta músicas com essa palavra na letra
DELETE FROM Midia_Playlist WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%fuck%');
-- Deleta podcasts do Flow
DELETE FROM Midia_Playlist WHERE id_midia IN (
    SELECT id_midia
    FROM Midia
    WHERE nome LIKE '%Flow%');
--
DELETE FROM Midia_Playlist
WHERE id_playlist IN (
    SELECT id_playlist
    FROM Playlist
    WHERE id_usuario = (
        SELECT id_usuario
        FROM Usuario
        WHERE nome = 'Joao Silva'
    )
);
----

-- Deleta músicas com essa palavra na letra
DELETE FROM Reproducao WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%fuck%');
-- Deleta podcasts do Flow
DELETE FROM Reproducao WHERE id_midia IN (
    SELECT id_midia
    FROM Midia
    WHERE nome LIKE '%Flow%');
-- Deleta um usuário
DELETE FROM Reproducao WHERE id_usuario IN (
    SELECT id_usuario
    FROM Usuario
    WHERE nome = 'Joao Silva');
----

-- Deleta músicas com essa palavra na letra
DELETE FROM Midia WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%fuck%');
-- Deleta podcasts do Flow
DELETE FROM Midia WHERE id_midia IN (
    SELECT id_midia
    FROM Midia
    WHERE nome LIKE '%Flow%');
----

-- Deleta albuns do ano de 1987
DELETE FROM Album
WHERE ano = 1987;
-- Deleta o artista Coldplay
DELETE FROM Album WHERE id_artista IN (
    SELECT id_artista
    FROM Artista
    WHERE nome = 'Coldplay');
----

-- Deleta o artista Coldplay
DELETE FROM Artista WHERE id_artista IN (
    SELECT id_artista
    FROM Artista
    WHERE nome = 'Coldplay');
----

-- Deleta um usuário
DELETE FROM Playlist WHERE id_usuario IN (
    SELECT id_usuario
    FROM Usuario
    WHERE nome = 'Joao Silva');
----

-- Deleta assinaturas vencidas
DELETE FROM Assinatura WHERE data_vencimento < '2023-12-01'; 
-- Deleta um usuário
DELETE FROM Assinatura WHERE id_usuario IN (
    SELECT id_usuario
    FROM Usuario
    WHERE nome = 'Joao Silva');
--
DELETE FROM Assinatura WHERE id_plano IN (
    SELECT id_plano
    FROM Plano_Assinatura
    WHERE valor>7);
----

-- Deleta um usuário
DELETE FROM Usuario WHERE id_usuario IN (
    SELECT id_usuario
    FROM Usuario
    WHERE nome = 'Joao Silva');
----

DELETE FROM Plano_Assinatura
WHERE valor>7;
