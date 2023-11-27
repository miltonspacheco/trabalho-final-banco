from reading import *
from settings import *
from play import *
from datetime import datetime

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
        print("\n---REPRODUZIR MIDIA---")
        cursor = connect.cursor()
        print("\nEscolha qual tipo de mídia você deseja ouvir:")
        print("Selecione uma opção:")
        print("1 - Música")
        print("2 - Podcast")
        tipo = int(input("Opção: "))
        print()
        
        if(tipo == 1):
            print("Músicas disponíveis:\n")

            select_query = """
            select mi.nome from midia as mi join musica as mu on mi.id_midia = mu.id_midia
            """
        else:
            print("Podcasts disponíveis:\n")

            select_query = """
            select mi.nome from midia as mi join podcast as po on mi.id_midia = po.id_midia
            """

        cursor.execute(select_query)
        myresult = cursor.fetchall()
        for x in myresult:
            print(x[0])
        
        audio_name = input("\nDigite o nome da mídia escolhida: ")
        
        select_query = f"""
            select mi.conteudo from midia as mi where mi.nome = %s
            """

        cursor.execute(select_query, (audio_name, ))
        url_result = cursor.fetchall()

        print("Para parar a reprodução basta usar o comando Ctrl + C")

        cursor.close()
        play(url_result[0][0])


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


def update_streamings(connect):
    query = """
    update midia
    set qtd_streamings = (
    select COUNT(*) 
    from Reproducao 
    where reproducao.id_midia = midia.id_midia
    );"""
    cursor = connect.cursor()
    cursor.execute(query)
    connect.commit()
    cursor.close()


def consulta1(connect):
    select_query = """
    select g.nome, avg(mi.duracao) as media
    from musica as mu
    join midia as mi on mi.id_midia = mu.id_midia
    join genero_Musica as gm on mi.id_midia = gm.id_midia
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

    averages_seconds = [time.total_seconds() for time in averages]

    # Plotting the bar graph
    plt.figure(figsize=(10, 6))
    plt.bar(genres, averages_seconds, color='skyblue')
    plt.xlabel('Gênero Musical')
    plt.ylabel('Média de Duração')
    plt.title('Média da Duração das Músicas por Gênero Musical')
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout()

    # Display the plot
    plt.show()
    cursor.close()


def consulta2(connect):
    select_query = """
    select u.nome as usuario, 
    count(*) as qtd_musicas_tocadas, sum(mi.duracao) as duracao_total_musicas_tocadas
    from usuario as u
    join reproducao as r on r.id_usuario = u.id_usuario
    join midia as mi on mi.id_midia = r.id_midia
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

    total_duration_seconds = [time.total_seconds() for time in total_duration]

    # Plotting the bar graphs
    fig, ax1 = plt.subplots(figsize=(10, 6))

    # Bar plot 
    ax1.bar(users, song_counts, color='skyblue')
    ax1.set_xlabel('Usuário')
    ax1.set_ylabel('Quantidade de Músicas Tocadas', color='skyblue')
    ax1.tick_params(axis='y', labelcolor='skyblue')

    # Creating a second y-axis 
    ax2 = ax1.twinx()
    ax2.plot(users, total_duration_seconds, color='orange', marker='o')
    ax2.set_ylabel('Duração Total das Músicas Tocadas (s)', color='orange')
    ax2.tick_params(axis='y', labelcolor='orange')

    # Title and labels
    plt.title('Quantidade e Duração Total de Músicas Tocadas por Usuário')
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout()

    # Display the plot
    plt.show()
    cursor.close()


def consulta3(connect):
    update_streamings(connect) #update column qtd_streamings

    select_query = """
    select u.nome, u.email, avg(m.qtd_streamings) as media_streamings
    from usuario as u
    join reproducao as r on r.id_usuario = u.id_usuario
    join midia as m on r.id_midia = m.id_midia
    where r.data_reproducao between '01/10/2023' and '31/10/2023'
    group by u.nome, u.email
    """
    print("\nTerceira Consulta: Selecione o nome e email dos usuários que ouviram música no mês de outubro de 2023, selecione também a média da quantidade de streamings.")
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
    plt.title('Média de Streamings por Usuário em Outubro de 2023')
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout()

    # Display the plot
    plt.show()
    cursor.close()


# Função para realizar o login
def login(connect, email, senha):
    try:    
        cursor = connect.cursor()
        query = "select id_usuario, nome from usuario where email = %s and senha = %s"
        cursor.execute(query, (email, senha))
        user = cursor.fetchone()
    except psycopg2.Error as e:
        connect.rollback()
        print("Erro ao fazer login", e)
    cursor.close()
    return user  # Retorna as informações do usuário se as credenciais estiverem corretas


# Função para cadastrar um novo usuário
def cadastrar_usuario(connect, nome, email, senha, cpf):
    try:    
        cursor = connect.cursor()
        query = "insert into usuario (nome, email, senha, cpf) values (%s, %s, %s, %s) returning id_usuario"
        cursor.execute(query, (nome, email, senha, cpf))
        novo_id_usuario = cursor.fetchone()[0]
        connect.commit()
    except psycopg2.Error as e:
        connect.rollback()
        print("Erro ao cadastrar o usuário:", e)
    cursor.close()
    return novo_id_usuario  # Retorna o ID do novo usuário cadastrado
    

def editar_usuario(connect, email, senha, novo_email, nova_senha):
    try:
        cursor = connect.cursor()
        query = "update Usuario set email = %s, senha = %s where email = %s and senha = %s"
        cursor.execute(query, (novo_email, nova_senha, email, senha))
        connect.commit()
    except psycopg2.Error as e:
        connect.rollback()
        print("Erro ao atualizar o usuário:", e)
    cursor.close()
    

def show_message():
    print("\n--- SIMULAÇÃO ---")
    print("\nBem-vindo(a) à plataforma de streaming DebMil!")
    print("Selecione uma opção:")
    print("1 - Cadastro")
    print("2 - Login")


def user_welcome(connect):
    show_message()

    option = int(input("Opção: "))

    if option == 2:
        email = input("Digite seu email: ")
        senha = input("Digite sua senha: ")

        usuario = login(connect, email, senha)

        if usuario:
            id_usuario, nome = usuario
            print(f"Usuário {nome} logado com sucesso!")
        else:
            char = input("Usuário inválido. Deseja fazer o cadastro? (S)im / (N)ão: ")
            if char.upper() == 'N':
                return

    if option == 1 or not usuario:
        user = input("Digite seu nome de usuário: ")
        email = input("Digite um email: ")
        senha = input("Digite uma senha: ")
        cpf = input("Digite seu cpf: ")

        novo_id = cadastrar_usuario(connect, user, email, senha, cpf)

        if novo_id:
            print(f"Novo usuário cadastrado com o id {novo_id}!")

    return email, senha


def user_options(connect, email, senha):
    power_up = 1
    while power_up == 1:
        print("\nO que você deseja fazer?")
        print("\nSelecione uma opção:")
        print("1 - Reproduzir mídia")
        print("2 - Editar perfil")
        print("3 - Sair")
        choice = int(input("Opção: "))

        if choice == 1:
            play_media(connect) 
        elif choice == 2:
            print("\nSelecione uma opção:")
            print("1 - Alterar email")
            print("2 - Alterar senha")
            alt = int(input("Opção: "))

            if alt == 1:
                novo_email = input("Digite o novo email: ")
                nova_senha = senha
            else:
                nova_senha = input("Digite a nova senha: ")
                novo_email = email

            editar_usuario(connect, email, senha, novo_email, nova_senha)
            print("\nUsuário alterado com sucesso") #TODO: o usuario nao esta sendo alterado
        else:
            print("Até a próxima!")
            break


def simulate(connect):
    try:
        email, senha = user_welcome(connect)
    except:
        print("Não foi possível fazer o login")
        return
    user_options(connect, email, senha)
    

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
