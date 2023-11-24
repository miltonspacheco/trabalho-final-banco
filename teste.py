import psycopg2
from settings import *

# Estabelece a conexão com o banco de dados
def connect_db():
    conn = psycopg2.connect(
        dbname=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD,
        host=DB_HOST,
        port=DB_PORT,
    )
    return conn

# Função para realizar o login
def login(email, senha):
    conn = connect_db()
    if conn is not None:
        try:
            cursor = conn.cursor()
            query = "SELECT id_usuario, nome FROM Usuario WHERE email = %s AND senha = %s"
            cursor.execute(query, (email, senha))
            user = cursor.fetchone()
            cursor.close()
            conn.close()
            return user  # Retorna as informações do usuário se as credenciais estiverem corretas
        except psycopg2.Error as e:
            print("Erro ao realizar o login:", e)


# Função para cadastrar um novo usuário
def cadastrar_usuario(nome, email, senha, cpf):
    conn = connect_db()
    if conn is not None:
        try:
            cursor = conn.cursor()
            query = "INSERT INTO Usuario (nome, email, senha, cpf) VALUES (%s, %s, %s, %s) RETURNING id_usuario"
            cursor.execute(query, (nome, email, senha, cpf))
            novo_id_usuario = cursor.fetchone()[0]
            conn.commit()
            cursor.close()
            conn.close()
            return novo_id_usuario  # Retorna o ID do novo usuário cadastrado
        except psycopg2.Error as e:
            print("Erro ao cadastrar usuário:", e)


# Exemplo de uso:
# Logando um usuário
usuario_logado = login('exemplo@email.com', 'senha123')

if usuario_logado:
    id_usuario, nome = usuario_logado
    print(f"Usuário {nome} com ID {id_usuario} logado com sucesso!")
else:
    print("Credenciais inválidas.")

# Cadastrando um novo usuário
novo_id = cadastrar_usuario('Novo Usuário', 'novo@email.com', 'nova_senha', '12345678901')

if novo_id:
    print(f"Novo usuário cadastrado com ID {novo_id}")