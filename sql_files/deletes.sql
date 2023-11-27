
-- Deleta músicas com restrição de palavra da plataforma -- TODO: ARRUMAR AQUI
DELETE FROM Genero_Musica WHERE id_midia = 1;
----
DELETE FROM Musica WHERE letra LIKE '%jungle%';
----
DELETE FROM Midia_Playlist WHERE id_midia = 1;
----
DELETE FROM Reproducao WHERE id_midia = 1;
----
DELETE FROM Midia WHERE id_midia = 1;
----

-- Deleta assinaturas vencidas
DELETE FROM Assinatura WHERE data_vencimento < '2023-12-01'; 