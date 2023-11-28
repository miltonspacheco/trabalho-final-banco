
-- Deleta músicas com restrição de palavra da plataforma -- TODO: ARRUMAR AQUI
DELETE FROM Genero_Musica WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%jungle%');
----
DELETE FROM Musica WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%jungle%');
----
DELETE FROM Midia_Playlist WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%jungle%');
----
DELETE FROM Reproducao WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%jungle%');
----
DELETE FROM Midia WHERE id_midia IN (
    SELECT id_midia
    FROM Musica
    WHERE letra LIKE '%jungle%');
----

-- Deleta assinaturas vencidas
DELETE FROM Assinatura WHERE data_vencimento < '2023-12-01'; 