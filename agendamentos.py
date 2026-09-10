import mysql.connector
from banco import conectar
from models import Agendamento

def listar_agendamentos():
    conexao = None