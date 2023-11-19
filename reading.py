# Valores para criação de tabelas do Banco de Dados
tables = {}

with open('sql_files/tables.sql', 'r') as file:
    sql_content = file.read()

# Split SQL content based on the marker 
table_sqls = sql_content.split('----')

tables['raca'] = table_sqls[0].strip()  
tables['animal'] = table_sqls[1].strip()  

##############################################################

# Valores para serem inseridos no Banco de Dados
inserts = {}

with open('sql_files/inserts.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
value_sql = sql_content.split('----')

inserts['raca'] = value_sql[0].strip()  
inserts['animal'] = value_sql[1].strip()

##############################################################

# Valores para deletar as tabelas
drop = {}

with open('sql_files/drop.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
drop_sql = sql_content.split('----')

drop['raca'] = drop_sql[0].strip()  
drop['animal'] = drop_sql[1].strip()

##############################################################

# Valores para teste de update
update = {}

with open('sql_files/update.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
update_sql = sql_content.split('----')

update['animal'] = update_sql[0].strip()  

##############################################################

# Valores para teste de delete
delete = {}

with open('sql_files/delete.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
delete_sql = sql_content.split('----')

delete['raca'] = delete_sql[0].strip() 
