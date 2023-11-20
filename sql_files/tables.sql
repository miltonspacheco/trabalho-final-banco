CREATE TABLE Playlist (
id_playlist integer PRIMARY KEY,
nome varchar(50),
descricao varchar(100),
id_usuario integer
);

CREATE TABLE Podcast_Tema (
id_tema integer,
id_midia integer,
PRIMARY KEY(id_tema,id_midia)/falha: chave estrangeira/
);

CREATE TABLE Podcaster (
id_podcaster integer PRIMARY KEY,
nome varchar(50)
);

CREATE TABLE Album (
id_album integer PRIMARY KEY,
tipo varchar(50),
nome varchar(50),
ano integer,
id_artista integer
);

CREATE TABLE Cantor_Solo (
aniversario date,
id_artista integer PRIMARY KEY
);

CREATE TABLE Banda (
data_formacao date,
id_artista integer PRIMARY KEY
);

CREATE TABLE Assinatura (
beneficios varchar(100),
id_plano integer PRIMARY KEY,
valor numeric,
data_inicio timestamp,
data_vencimento timestamp,
nome varchar(50)
);

CREATE TABLE Usuario (
id_usuario integer PRIMARY KEY,
nome varchar(50),
email varchar(50),
cpf varchar(11),
id_plano integer,
FOREIGN KEY(id_plano) REFERENCES Assinatura (id_plano)
);

CREATE TABLE Artista (
id_artista integer PRIMARY KEY,
nome varchar(50)
);

CREATE TABLE Reproducao (
data timestamp,
id_reproducao integer PRIMARY KEY,
id_midia integer,
id_usuario integer,
FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario)
);

CREATE TABLE Midia_Playlist (
id_midia integer,
id_playlist integer,
PRIMARY KEY(id_midia,id_playlist),
FOREIGN KEY(id_playlist) REFERENCES Playlist (id_playlist)
);

CREATE TABLE Midia (
id_midia integer PRIMARY KEY,
nome varchar(50),
duracao time,
qtd_streamings integer,
data timestamp,
conteudo bytea
);

CREATE TABLE Musica (
letra text,
id_midia integer PRIMARY KEY,
id_album integer,
FOREIGN KEY(id_midia) REFERENCES Midia (id_midia),
FOREIGN KEY(id_album) REFERENCES Album (id_album)
);

CREATE TABLE Podcast (
id_midia integer PRIMARY KEY,
id_podcaster integer,
FOREIGN KEY(id_midia) REFERENCES Midia (id_midia),
FOREIGN KEY(id_podcaster) REFERENCES Podcaster (id_podcaster)
);

CREATE TABLE Genero_Musica (
id_genero integer,
id_midia integer,
PRIMARY KEY(id_genero,id_midia)/falha: chave estrangeira/
);

CREATE TABLE Genero (
nome varchar(50),
id_genero integer PRIMARY KEY
);

CREATE TABLE Tema (
id_tema integer PRIMARY KEY,
descricao varchar(100)
);

ALTER TABLE Playlist ADD FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario);
ALTER TABLE Podcast_Tema ADD FOREIGN KEY(id_tema) REFERENCES Tema (id_tema);
ALTER TABLE Podcast_Tema ADD FOREIGN KEY(id_midia) REFERENCES Podcast (id_midia)
ALTER TABLE Album ADD FOREIGN KEY(id_artista) REFERENCES Artista (id_artista);
ALTER TABLE Cantor_Solo ADD FOREIGN KEY(id_artista) REFERENCES Artista (id_artista);
ALTER TABLE Banda ADD FOREIGN KEY(id_artista) REFERENCES Artista (id_artista);
ALTER TABLE Reproducao ADD FOREIGN KEY(id_midia) REFERENCES Midia (id_midia);
ALTER TABLE Midia_Playlist ADD FOREIGN KEY(id_midia) REFERENCES Midia (id_midia);
ALTER TABLE Genero_Musica ADD FOREIGN KEY(id_genero) REFERENCES Genero (id_genero);
ALTER TABLE Genero_Musica ADD FOREIGN KEY(id_midia) REFERENCES Musica (id_midia);