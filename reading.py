import psycopg2
from psycopg2 import errorcodes
import matplotlib.pyplot as plt

# Valores para criação de tabelas do Banco de Dados 
tables = {} 

with open('sql_files/tables.sql', 'r') as file:
    sql_content = file.read()

# Split SQL content based on the marker 
sql_read = sql_content.split('----')

tables['Assinatura'] = sql_read[0].strip()  
tables['Usuario'] = sql_read[1].strip() 
tables['Playlist'] = sql_read[2].strip()  
tables['Artista'] = sql_read[3].strip()  
tables['Album'] = sql_read[4].strip()  
tables['Midia'] = sql_read[5].strip()  
tables['Reproducao'] = sql_read[6].strip()
tables['Midia_Playlist'] = sql_read[7].strip()
tables['Musica'] = sql_read[8].strip()
tables['Genero'] = sql_read[9].strip()
tables['Genero_Musica'] = sql_read[10].strip()
tables['Podcaster'] = sql_read[11].strip()
tables['Podcast'] = sql_read[12].strip()
tables['Tema'] = sql_read[13].strip()
tables['Podcast_Tema'] = sql_read[14].strip()

del sql_content
del sql_read

##############################################################

# Valores para serem inseridos no Banco de Dados
inserts = {}

with open('sql_files/inserts.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
sql_read = sql_content.split('----')

inserts['Assinatura'] = sql_read[0].strip()  
inserts['Usuario'] = sql_read[1].strip() 
inserts['Playlist'] = sql_read[2].strip()  
inserts['Artista'] = sql_read[3].strip()  
inserts['Album'] = sql_read[4].strip()  
inserts['Midia'] = sql_read[5].strip()  
inserts['Reproducao'] = sql_read[6].strip()
inserts['Midia_Playlist'] = sql_read[7].strip()
inserts['Musica'] = sql_read[8].strip()
inserts['Genero'] = sql_read[9].strip()
inserts['Genero_Musica'] = sql_read[10].strip()
inserts['Podcaster'] = sql_read[11].strip()
inserts['Podcast'] = sql_read[12].strip()
inserts['Tema'] = sql_read[13].strip()
inserts['Podcast_Tema'] = sql_read[14].strip() 

del sql_content
del sql_read

##############################################################

# Valores para deletar as tabelas
drop = {}

with open('sql_files/drop.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
sql_read = sql_content.split('----')

drop['Assinatura'] = sql_read[0].strip()  
drop['Usuario'] = sql_read[1].strip() 
drop['Playlist'] = sql_read[2].strip()  
drop['Artista'] = sql_read[3].strip()  
drop['Album'] = sql_read[4].strip()  
drop['Midia'] = sql_read[5].strip()  
drop['Reproducao'] = sql_read[6].strip()
drop['Midia_Playlist'] = sql_read[7].strip()
drop['Musica'] = sql_read[8].strip()
drop['Genero'] = sql_read[9].strip()
drop['Genero_Musica'] = sql_read[10].strip()
drop['Podcaster'] = sql_read[11].strip()
drop['Podcast'] = sql_read[12].strip()
drop['Tema'] = sql_read[13].strip()
drop['Podcast_Tema'] = sql_read[14].strip()

del sql_content
del sql_read
