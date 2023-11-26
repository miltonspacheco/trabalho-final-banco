from functions import *

# main
try:
    # Estabelece Conexão com o DB
    con = connect_db()

    power_up = 1
    while power_up == 1:
        
        interface = """\n       ---MENU---
        1.  Acessar Plataforma
        2.  Operações
        3.  Consultas
        0.  Desconectar do Banco de Dados\n """
        print(interface)

        choice = int(input("Opção: "))
        if choice < 0 or choice > 3:
            print("Erro tente novamente")
            choice = int(input())

        if choice == 0:
            if not con.closed:
                exit_db(con)
                break
            else:
                break

        if choice == 1:
            simulate(con)
            #play_media(con)

        if choice == 2:

            interface = """\n       ---OPERAÇÕES---
            1.  CRUD
            2.  Deletar todas as tabelas
            3.  Criar todas as tabelas
            4.  Inserir todos os valores
            5.  Updates
            6.  Deletes
            7.  Update valor
            8.  Delete valor
            9.  Mostrar tabela
            0.  Voltar\n """
            print(interface)

            option = int(input("Opção: "))
            if option < 0 or option > 9:
                print("Erro tente novamente")
                option = int(input())

            if option == 0:
                continue

            if option == 1:
                crud(con)

            if option == 2:                
                drop_all_tables(con)
            
            if option == 3:
                create_all_tables(con)

            if option == 4:
                insert_sql(con)

            if option == 5:
                update_sql(con)

            if option == 6:
                delete_sql(con)

            if option == 7:
                update_value(con)

            if option == 8:                
                delete_value(con)

            if option == 9:    
                show_table(con)


        if choice == 3:
            interface = """\n       ---CONSULTAS---
            1.  Consulta 1
            2.  Consulta 2
            3.  Consulta 3
            0.  Voltar\n """
            print(interface)

            choice = int(input("Opção: "))
            if choice < 0 or choice > 3:
                print("Erro tente novamente")
                choice = int(input())

            if choice == 0:
                continue

            if choice == 1:
                consulta1(con)
            
            if choice == 2:
                consulta2(con)
            
            if choice == 3:
                consulta3(con)
            

except psycopg2.Error as err:
    print("Erro na conexão com o PostgreSQL:", err)

