from reading import *
from settings import *
from play import *

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


def play_media(connect):
    print("Escolha qual tipo de mídia você deseja ouvir:")
    tipo = int(input("""
    1 - Música
    2 - Podcast \n"""))
    
    if(tipo == 1):
        audio_type = 'music'
        print("Músicas disponíveis:\n")

        select_query = """
        select mi.nome from midia as mi join musica as mu on mi.id_midia = mu.id_midia
        """
    else:
        audio_type = 'podcast'
        print("Podcasts disponíveis:\n")

        select_query = """
        select mi.nome from midia as mi join podcast as po on mi.id_midia = po.id_midia
        """

    cursor = connect.cursor()
    cursor.execute(select_query)
    myresult = cursor.fetchall()
    for x in myresult:
        print(x)
    
    audio_name = input("\nDigite o nome da mídia escolhida: ")
    print("Para parar a reprodução basta usar o comando Ctrl + C")
    
    play(audio_type, audio_name)


def drop_all_tables(connect):
    print("\n---DROP DB---")
    # Esvazia o Banco de Dados
    cursor = connect.cursor()
    for drop_name in drops:
        drop_description = drops[drop_name]
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
                if table_name.lower() == name:
                    print("\nPara criar a tabela {}, foi utilizado o seguinte código: \n{}".format(table_name, table_description))

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

def delete_value(connect):
    print("\n---DELETAR VALOR---")
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
                if table_name.lower() == name:
                    print("\nPara criar a tabela {}, foi utilizado o seguinte código: \n{}".format(table_name, table_description))

            codigo_f = input("Digite o nome da chave primária: ")
            codigo = input("Digite o valor da chave primária: ")

            query = f"delete from {name} where {codigo_f} = {codigo}"
            cursor.execute(query)
            print("Tupla deletada com sucesso!")
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
    print("\n---UPDATE TEST---")
    # Inesrsão dos valores nas tabelas
    cursor = connect.cursor()
    for update_name in updates:
        update_description = updates[update_name]
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
    # Inesrsão dos valores nas tabelas
    cursor = connect.cursor()
    for delete_name in deletes:
        delete_description = deletes[delete_name]
        try:
            print("Teste de atualização de valores para {}: ".format(delete_name), end='')
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
    from musica as m
    join genero_Musica as gm on m.id_midia = gm.id_midia
    join genero as g on gm.id_genero = g.id_genero
    group by g.nome
    """
    print("Primeira Consulta: Selecione a média da duração das músicas por gênero musical.")
    cursor = connect.cursor()
    cursor.execute(select_query)
    myresult = cursor.fetchall()
    for x in myresult:
        print(x)

    # Extracting rows
    genres = [row[0] for row in myresult]
    averages = [row[1] for row in myresult]

    # Plotting the bar graph
    plt.figure(figsize=(10, 6))
    plt.bar(genres, averages, color='skyblue')
    plt.xlabel('Gênero Musical')
    plt.ylabel('Média de Duração')
    plt.title('Média da Duração das Músicas por Gênero Musical')
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout()

    # Display the plot
    plt.show()


def consulta2(connect):
    select_query = """
    select u.nome as usuario, 
    count(*) as qtd_musicas_tocadas, sum(mi.duracao) as duracao_total_musicas_tocadas
    from usuario as u
    join reproducao as r on r.id_usuario = u_usuario
    join midia as mi on mi.id_midia = r.id_midiaa
    group by u.nome
    """
    print("\nSegunda Consulta: Selecione a quantidade total de músicas tocadas e a duração total considerando a duração individual de cada música por usuario.")
    cursor = connect.cursor()
    cursor.execute(select_query)
    myresult = cursor.fetchall()
    for x in myresult:
        print(x)
    
    # Extracting rows
    users = [row[0] for row in myresult]
    song_counts = [row[1] for row in myresult]
    total_duration = [row[2] for row in myresult]

    # Plotting the bar graphs
    fig, ax1 = plt.subplots(figsize=(10, 6))

    # Bar plot 
    ax1.bar(users, song_counts, color='skyblue')
    ax1.set_xlabel('Usuário')
    ax1.set_ylabel('Quantidade de Músicas Tocadas', color='skyblue')
    ax1.tick_params(axis='y', labelcolor='skyblue')

    # Creating a second y-axis 
    ax2 = ax1.twinx()
    ax2.plot(users, total_duration, color='orange', marker='o')
    ax2.set_ylabel('Duração Total das Músicas Tocadas (s)', color='orange')
    ax2.tick_params(axis='y', labelcolor='orange')

    # Title and labels
    plt.title('Quantidade e Duração Total de Músicas Tocadas por Usuário')
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout()

    # Display the plot
    plt.show()


def consulta3(connect):
    select_query = """
    select u.nome, u.e-mail, avg(m.qtde_streamings) as media_streamings
    from assinatura as a
    join usuario as u on u.id_plano = a.id_plano
    join reproducao as r on r.id_usuario = u.id_usuario
    join midia as m on m.id_midia = r.id_midia
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

    # Extracting rows
    users = [row[0] for row in myresult]
    emails = [row[1] for row in myresult]
    avg_streamings = [row[2] for row in myresult]

    # Plotting the bar graph
    plt.figure(figsize=(10, 6))
    plt.bar(users, avg_streamings, color='green')
    plt.xlabel('Usuário')
    plt.ylabel('Média de Streamings')
    plt.title('Média de Streamings por Usuário com Plano Gratuito em Outubro de 2023')
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout()

    # Display the plot
    plt.show()


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
