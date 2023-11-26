import psycopg2
from psycopg2 import errorcodes
import matplotlib.pyplot as plt

# Valores para criação de tabelas do Banco de Dados 
tables = {} 

with open('sql_files/tables.sql', 'r') as file:
    sql_content = file.read()

# Split SQL content based on the marker 
sql_read = sql_content.split('----')

tables['Plano_Assinatura'] = sql_read[0].strip()
tables['Usuario'] = sql_read[1].strip() 
tables['Assinatura'] = sql_read[2].strip()  
tables['Playlist'] = sql_read[3].strip()  
tables['Artista'] = sql_read[4].strip()  
tables['Album'] = sql_read[5].strip()  
tables['Midia'] = sql_read[6].strip()  
tables['Reproducao'] = sql_read[7].strip()
tables['Midia_Playlist'] = sql_read[8].strip()
tables['Musica'] = sql_read[9].strip()
tables['Genero'] = sql_read[10].strip()
tables['Genero_Musica'] = sql_read[11].strip()
tables['Podcaster'] = sql_read[12].strip()
tables['Podcast'] = sql_read[13].strip()
tables['Tema'] = sql_read[14].strip()
tables['Podcast_Tema'] = sql_read[15].strip()

del sql_content
del sql_read

##############################################################

# Valores para serem inseridos no Banco de Dados
inserts = {}

with open('sql_files/inserts.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
sql_read = sql_content.split('----')

inserts['Plano_Assinatura'] = sql_read[0].strip()
inserts['Usuario'] = sql_read[1].strip() 
inserts['Assinatura'] = sql_read[2].strip()  
inserts['Playlist'] = sql_read[3].strip()  
inserts['Artista'] = sql_read[4].strip()  
inserts['Album'] = sql_read[5].strip()  
inserts['Midia'] = sql_read[6].strip()  
inserts['Reproducao'] = sql_read[7].strip()
inserts['Midia_Playlist'] = sql_read[8].strip()
inserts['Musica'] = sql_read[9].strip()
inserts['Genero'] = sql_read[10].strip()
inserts['Genero_Musica'] = sql_read[11].strip()
inserts['Podcaster'] = sql_read[12].strip()
inserts['Podcast'] = sql_read[13].strip()
inserts['Tema'] = sql_read[14].strip()
inserts['Podcast_Tema'] = sql_read[15].strip()

del sql_content
del sql_read

##############################################################

# Valores para deletar as tabelas
drops = {}

with open('sql_files/drops.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
sql_read = sql_content.split('----')

drops['Podcast_Tema'] = sql_read[0].strip()
drops['Tema'] = sql_read[1].strip()
drops['Podcast'] = sql_read[2].strip()
drops['Podcaster'] = sql_read[3].strip()
drops['Genero_Musica'] = sql_read[4].strip()
drops['Genero'] = sql_read[5].strip()
drops['Musica'] = sql_read[6].strip()
drops['Midia_Playlist'] = sql_read[7].strip()
drops['Reproducao'] = sql_read[8].strip()
drops['Midia'] = sql_read[9].strip()  
drops['Album'] = sql_read[10].strip()  
drops['Artista'] = sql_read[11].strip()  
drops['Playlist'] = sql_read[12].strip()  
drops['Assinatura'] = sql_read[13].strip()  
drops['Usuario'] = sql_read[14].strip() 
drops['Plano_Assinatura'] = sql_read[15].strip()

del sql_content
del sql_read

##############################################################

# Valores para update no Banco de Dados
updates = {}

with open('sql_files/updates.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
sql_read = sql_content.split('----')

updates['Plano_Assinatura'] = sql_read[0].strip()
updates['Usuario'] = sql_read[1].strip() 
updates['Playlist'] = sql_read[2].strip()  
updates['Midia'] = sql_read[3].strip()  
updates['Artista'] = sql_read[4].strip()  
# updates['Assinatura'] = sql_read[2].strip()  
# updates['Album'] = sql_read[5].strip()  
# updates['Reproducao'] = sql_read[7].strip()
# updates['Midia_Playlist'] = sql_read[8].strip()
# updates['Musica'] = sql_read[9].strip()
# updates['Genero'] = sql_read[10].strip()
# updates['Genero_Musica'] = sql_read[11].strip()
# updates['Podcaster'] = sql_read[12].strip()
# updates['Podcast'] = sql_read[13].strip()
# updates['Tema'] = sql_read[14].strip()
# updates['Podcast_Tema'] = sql_read[15].strip()

del sql_content
del sql_read

##############################################################

# Valores para update no Banco de Dados
deletes = {}

with open('sql_files/deletes.sql', 'r') as file:
    sql_content = file.read()

# Split SQL based on the marker 
sql_read = sql_content.split('----')

# deletes['Plano_Assinatura'] = sql_read[0].strip()
# deletes['Usuario'] = sql_read[1].strip() 
# deletes['Playlist'] = sql_read[3].strip()  
# deletes['Artista'] = sql_read[4].strip()  
# deletes['Album'] = sql_read[5].strip()  
deletes['Genero_Musica'] = sql_read[0].strip()
deletes['Musica'] = sql_read[1].strip()
deletes['Midia_Playlist'] = sql_read[2].strip()
deletes['Reproducao'] = sql_read[3].strip()
deletes['Midia'] = sql_read[4].strip()  
deletes['Assinatura'] = sql_read[5].strip()  
# deletes['Genero'] = sql_read[10].strip()
# deletes['Podcaster'] = sql_read[12].strip()
# deletes['Podcast'] = sql_read[13].strip()
# deletes['Tema'] = sql_read[14].strip()
# deletes['Podcast_Tema'] = sql_read[15].strip()

del sql_content
del sql_read