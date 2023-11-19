import psycopg2
from functions import *

# main
try:
    # Estabelece Conexão com o DB
    con = connect_db()

    power_up = 1
    while power_up == 1:
        interface = """\n       ---MENU---
        1.  CRUD
        2.  Criar todas as tabelas
        3.  Inserir todos os valores
        4.  Rodar os Updates
        5.  Rodar os Deletes
        6.  Consulta 1
        7.  Consulta 2
        8.  Consulta 3 (nao tem ainda)
        9.  Mostrar tabela
        10. Update valor
        11. Deletar todas as tabelas
        0.  Desconectar do Banco de Dados\n """
        print(interface)

        choice = int(input("Opção: "))
        if choice < 0 or choice > 12:
            print("Erro tente novamente")
            choice = int(input())

        if choice == 0:
            if not con.closed:
                exit_db(con)
                break
            else:
                break

        if choice == 1:
            crud(con)

        if choice == 2:
            create_all_tables(con)

        if choice == 3:
            insert_sql(con)

        if choice == 4:
            update_sql(con)

        if choice == 5:
            delete_sql(con)

        if choice == 6:
            consulta1(con)

        if choice == 7:
            consulta2(con)

        # if choice == 8:
        #     consulta3(con)

        if choice == 9:
            show_table(con)

        if choice == 10:
            update_value(con)

        if choice == 11:
            drop_all_tables(con)

except psycopg2.Error as err:
    print("Erro na conexão com o PostgreSQL:", err)

