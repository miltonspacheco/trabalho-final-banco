UPDATE Plano_Assinatura SET valor = valor + 5 WHERE id_plano != 1;
----

UPDATE Usuario SET email = 'miltonsilveirapacheco@gmail.com' WHERE nome = 'Milton Pacheco';
----

UPDATE Playlist SET descricao = 'Musicas de rock antigas' WHERE nome = 'Rock Antigo';
----

UPDATE Midia SET nome = CONCAT(nome, '(Explicit)') WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%fuck%');
----

UPDATE Artista SET tipo = 'Dupla' WHERE nome = 'Chicaozinho e Xororo';
----

UPDATE Assinatura SET data_vencimento = '2025-07-01' WHERE id_plano = 3;
----

UPDATE Album SET tipo = 'Ao Vivo' WHERE id_album = 11;
----

UPDATE Reproducao SET data_reproducao = null WHERE data_reproducao > '2023-12-02 00:00:00';
----

-- Muda Paradise City para Clássicos Inesquecíveis
UPDATE Midia_Playlist SET id_playlist = 4 WHERE id_midia = 2;
----

UPDATE Musica SET letra = replace(letra, 'relógio', 'relogio');
----

UPDATE Genero SET nome = 'Rock n Roll' WHERE nome = 'Rock';
----

-- 'Goosebumps' pode ser considerado Trap ao invés de Rap
UPDATE Genero_Musica SET id_genero = 9 WHERE id_midia = 8;
----

UPDATE Podcaster 
SET descricao = 'Flow Podcast acontece todo dia de segunda a sexta, normalmente as 20h!' 
WHERE nome = 'Flow Podcast';
----

UPDATE Podcast SET id_podcaster = null WHERE id_podcaster = 4;
----

UPDATE Tema SET descricao = 'Cultura Pop' WHERE descricao = 'Geek';
----

UPDATE Podcast_Tema SET id_tema = 7 WHERE id_tema = 6;