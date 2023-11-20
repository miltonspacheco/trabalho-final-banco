import psycopg2
from psycopg2 import errorcodes
from reading import *
from settings import *
from pydub import AudioSegment
from pydub.playback import play

def connect_db():
    try:
        conn = psycopg2.connect(
            dbname=DB_NAME,
            user=DB_USER,
            password=DB_PASSWORD,
            host=DB_HOST,
            port=DB_PORT,
            # options='-c search_path=esquema',
            # client_encoding='UTF8'  
)

        if conn:
            print("Conectado ao servidor PostgreSQL")
            cur = conn.cursor()
            cur.execute("select current_database();")
            db_name = cur.fetchone()
            print("Conectado ao banco de dados:", db_name[0])
            cur.close()
            
        return conn
        
    except psycopg2.Error as e:
        print(f"Erro ao conectar ao PostgreSQL: {e}")
        return None

# def play_midia(connect):


def drop_all_tables(connect):
    print("\n---DROP DB---")
    # Esvazia o Banco de Dados
    cursor = connect.cursor()
    for drop_name in drop:
        drop_description = drop[drop_name]
        try:
            print("Deletando {}: ".format(drop_name), end='')
            cursor.execute(drop_description)
        except psycopg2.Error as err:
            print(err)
        else:
            print("OK")
    connect.commit()
    cursor.close()


def create_all_tables(connect):
    print("\n---CREATE ALL TABLES---")
    # Criação das tabelas
    cursor = connect.cursor()
    for table_name in tables:
        table_description = tables[table_name]
        try:
            print("Criando tabela {}: ".format(table_name), end='')
            cursor.execute(table_description)
        except psycopg2.Error as err:
            if err.pgcode == '42P07':  # Verifica se o código de erro é relacionado à tabela já existente
                print("Tabela já existe.")
            else:
                print(err)
        else:
            print("OK")
    connect.commit()
    cursor.close()


def show_table(connect):
    print("\n---SELECIONAR TABELA---")
    # Listar tabelas disponíveis
    cursor = connect.cursor()
    cursor.execute("select table_name from information_schema.tables where table_schema = 'public';")
    tables_list = cursor.fetchall()
    table_names = [table[0] for table in tables_list]
    print("Tabelas disponíveis:")
    for table_name in table_names:
        print("Nome: {}".format(table_name))

    try:
        name = input("\nDigite o nome da tabela que deseja consultar: ")
        if name in table_names:
            select = "select * from {}".format(name)
            cursor.execute(select)
            print("TABELA {}".format(name))
            results = cursor.fetchall()
            for row in results:
                print(row)
        else:
            print("Tabela não encontrada.")
    except psycopg2.Error as err:
        print(err)
    finally:
        cursor.close()


def update_value(connect):
    print("\n---ATUALIZAR VALOR---")
    # Listar tabelas disponíveis
    cursor = connect.cursor()
    cursor.execute("select table_name from information_schema.tables where table_schema = 'public';")
    tables_list = cursor.fetchall()
    table_names = [table[0] for table in tables_list]
    print("Tabelas disponíveis:")
    for table_name in table_names:
        print("Nome: {}".format(table_name))

    try:
        name = input("\nDigite o nome da tabela que deseja atualizar: ")
        if name in table_names:
            for table_name in tables:
                table_description = tables[table_name]
                if table_name == name:
                    print("Para criar a tabela {}, foi utilizado o seguinte código: \n{}".format(table_name, table_description))

            atributo = input("Digite o nome do atributo a ser alterado: ")
            valor = input("Digite o novo valor: ")
            codigo_f = input("Digite o nome da chave primária: ")
            codigo = input("Digite o valor da chave primária: ")

            query = f"update {name} set {atributo} = %s where {codigo_f} = %s;"
            cursor.execute(query, (valor, codigo))
            print("Atributo atualizado com sucesso!")
        else:
            print("Tabela não encontrada.")
    except psycopg2.Error as err:
        print(err)
    finally:
        connect.commit()
        cursor.close()


def insert_sql(connect):
    print("\n---INSERIR TESTE---")
    # Inserção de valores nas tabelas
    cursor = connect.cursor()
    for insert_name in inserts:
        insert_description = inserts[insert_name]
        try:
            print("Inserindo valores para {}: ".format(insert_name), end='')
            cursor.execute(insert_description)
        except psycopg2.Error as err:
            print(err)
        else:
            print("OK")
    connect.commit()
    cursor.close()


def update_sql(connect):
    print("\n---ATUALIZAR TESTE---")
    # Atualização de valores nas tabelas
    cursor = connect.cursor()
    for update_name in update:
        update_description = update[update_name]
        try:
            print("Teste de atualização de valores para {}: ".format(update_name), end='')
            cursor.execute(update_description)
        except psycopg2.Error as err:
            print(err)
        else:
            print("OK")
    connect.commit()
    cursor.close()


def delete_sql(connect):
    print("\n---DELETE TEST---")
    # Exclusão de valores nas tabelas
    cursor = connect.cursor()
    for delete_name in delete:
        delete_description = delete[delete_name]
        try:
            print("Teste de exclusão de valores para {}: ".format(delete_name), end='')
            cursor.execute(delete_description)
        except psycopg2.Error as err:
            print(err)
        else:
            print("OK")
    connect.commit()
    cursor.close()


def consulta1(connect):
    select_query = """
    select g.nome, avg(m.duracao) as media
    from Musica as m
    join Genero_Musica as gm on m.id_midia = gm.id_midia
    join Genero as g on gm.id_genero = g.id_genero
    group by g.nome
    """
    print("Primeira Consulta: Selecione a média da duração das músicas por gênero musical.")
    cursor = connect.cursor()
    cursor.execute(select_query)
    myresult = cursor.fetchall()
    for x in myresult:
        print(x)


def consulta2(connect):
    select_query = """
    select u.nome as usuario, 
    count(*) as qtd_musicas_tocadas, sum(mi.duracao) as duracao_total_musicas_tocadas
    from Usuario as u
    join Reproducao as r on r.id_usuario = u_usuario
    join Midia as mi on mi.id_midia = r.id_midiaa
    group by u.nome
    """
    print("\nSegunda Consulta: Selecione a quantidade total de músicas tocadas e a duração total considerando a duração individual de cada música por usuario.")
    cursor = connect.cursor()
    cursor.execute(select_query)
    myresult = cursor.fetchall()
    for x in myresult:
        print(x)


def consulta3(connect):
    select_query = """
    select u.nome, u.e-mail, avg(m.qtde_streamings) as media_streamings
    from Assinatura as a
    join Usuario as u on u.id_plano = a.id_plano
    join Reproducao as r on r.id_usuario = u.id_usuario
    join Midia as m on m.id_midia = r.id_midia
    where r.data between '01/10/2023' and '31/10/2023'
    and a.nome = 'Gratuito'
    group by u.nome, u.e-mail
    """
    print("\nTerceira Consulta: Selecione o nome e email dos usuários como plano de assinatura gratuito que ouviram música no mês de outubro de 2023, selecione também a média da quantidade de streamings.")
    cursor = connect.cursor()
    cursor.execute(select_query)
    myresult = cursor.fetchall()
    for x in myresult:
        print(x)


def exit_db(connect):
    print("\n---EXIT DB---")
    connect.close()
    print("Conexão ao PostgreSQL foi encerrada")


def crud(connect):
    drop_all_tables(connect)
    create_all_tables(connect)
    insert_sql(connect)

    print("\n---CONSULTAS BEFORE---")
    consulta1(connect)
    consulta2(connect)
    consulta3(connect)

    update_sql(connect)
    delete_sql(connect)

    print("\n---CONSULTAS AFTER---")
    consulta1(connect)
    consulta2(connect)
    consulta3(connect)
