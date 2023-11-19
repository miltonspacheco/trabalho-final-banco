create table raca (
      "id_raca" integer primary key NOT NULL,
      "tipo_animal" varchar(10) NOT NULL,
      "descricao" varchar(50) NOT NULL,
      check ("tipo_animal" in ('Cachorro','Gato'))
);

----

create table animal (
      "cod_animal" integer primary key NOT NULL,
      "id_raca" integer NOT NULL,
      "nome" varchar(100) NOT NULL,
      "cor" varchar(20) NOT NULL,
      "peso_kg" numeric(4,2) NOT NULL,
      "porte" varchar(20) NOT NULL,
      "tipo_sangue" varchar(10),
      foreign key("id_raca") references raca ("id_raca"),
      check ("porte" in ('Pequeno','Médio', 'Grande'))
);