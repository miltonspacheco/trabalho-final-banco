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
        4.  Updates - teste
        5.  Deletes - teste
        6.  Update valor
        7.  Delete valor
        8.  Consulta 1
        9.  Consulta 2
        10.  Consulta 3 
        11.  Mostrar tabela
        12. Deletar todas as tabelas
        13. Reproduzir mídia
        14. Simulação usuário
        0.  Desconectar do Banco de Dados\n """
        print(interface)

        choice = int(input("Opção: "))
        if choice < 0 or choice > 14:
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
            update_value(con)

        if choice == 7:
            delete_value(con)

        if choice == 8:
            consulta1(con)

        if choice == 9:
            consulta2(con)

        if choice == 10:
            consulta3(con)

        if choice == 11:
            show_table(con)

        if choice == 12:
            drop_all_tables(con)

        if choice == 13:
            play_media(con)

        if choice == 14:
            simulate(con)
            

except psycopg2.Error as err:
    print("Erro na conexão com o PostgreSQL:", err)

