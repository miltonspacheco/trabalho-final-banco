# LIB IMPORTS
import psycopg2
from psycopg2 import errorcodes
from pydub import AudioSegment
from pydub.playback import play
import matplotlib.pyplot as plt

# POSTGRESQL SETTINGS
DB_NAME = 'postgres'
DB_USER = 'postgres'
DB_PASSWORD = 'hiperdeby'
DB_HOST = 'localhost'
DB_PORT = '5432'