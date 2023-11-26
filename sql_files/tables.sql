CREATE TABLE Plano_Assinatura (
id_plano integer PRIMARY KEY,
beneficios varchar(100),
valor numeric,
nome varchar(50)
);

----

CREATE TABLE Usuario (
id_usuario SERIAL PRIMARY KEY,
nome varchar(50),
email varchar(50),
senha varchar(50),
cpf varchar(11)
);

----

CREATE TABLE Assinatura (
id_assinatura integer PRIMARY KEY,
data_inicio date,
data_vencimento date,
id_plano integer,
id_usuario integer,
FOREIGN KEY(id_plano) REFERENCES Plano_Assinatura (id_plano),
FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario)
);

----

CREATE TABLE Playlist (
id_playlist integer PRIMARY KEY,
nome varchar(50),
descricao varchar(100),
id_usuario integer,
FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario)
);

---- 

CREATE TABLE Artista (
id_artista integer PRIMARY KEY,
nome varchar(50),
tipo varchar(50)
);

----

CREATE TABLE Album (
id_album integer PRIMARY KEY,
tipo varchar(50),
nome varchar(50),
ano integer,
id_artista integer,
FOREIGN KEY(id_artista) REFERENCES Artista (id_artista)
);

----

CREATE TABLE Midia (
id_midia integer PRIMARY KEY,
nome varchar(100),
duracao time,
qtd_streamings integer,
data_lancamento date,
conteudo varchar(50)
);

----

CREATE TABLE Reproducao (
data_reproducao timestamp,
id_midia integer,
id_usuario integer,
PRIMARY KEY(id_usuario, id_midia),
FOREIGN KEY(id_usuario) REFERENCES Usuario (id_usuario),
FOREIGN KEY(id_midia) REFERENCES Midia (id_midia)
);

----

CREATE TABLE Midia_Playlist (
id_midia integer,
id_playlist integer,
PRIMARY KEY(id_midia,id_playlist),
FOREIGN KEY(id_playlist) REFERENCES Playlist (id_playlist),
FOREIGN KEY(id_midia) REFERENCES Midia (id_midia)
);

----

CREATE TABLE Musica (
letra text,
id_midia integer PRIMARY KEY,
id_album integer,
FOREIGN KEY(id_midia) REFERENCES Midia (id_midia),
FOREIGN KEY(id_album) REFERENCES Album (id_album)
);

----

CREATE TABLE Genero (
nome varchar(50),
id_genero integer PRIMARY KEY
);

----

CREATE TABLE Genero_Musica (
id_genero integer,
id_midia integer,
PRIMARY KEY(id_genero,id_midia),
FOREIGN KEY(id_genero) REFERENCES Genero (id_genero),
FOREIGN KEY(id_midia) REFERENCES Musica (id_midia)
);

----

CREATE TABLE Podcaster (
id_podcaster integer PRIMARY KEY,
nome varchar(50),
descricao varchar(100)
);

----

CREATE TABLE Podcast (
id_midia integer PRIMARY KEY,
id_podcaster integer,
FOREIGN KEY(id_midia) REFERENCES Midia (id_midia),
FOREIGN KEY(id_podcaster) REFERENCES Podcaster (id_podcaster)
);

----

CREATE TABLE Tema (
id_tema integer PRIMARY KEY,
descricao varchar(100)
);

----

CREATE TABLE Podcast_Tema (
id_tema integer,
id_midia integer,
PRIMARY KEY(id_tema,id_midia),
FOREIGN KEY(id_tema) REFERENCES Tema (id_tema),
FOREIGN KEY(id_midia) REFERENCES Podcast (id_midia)
);
