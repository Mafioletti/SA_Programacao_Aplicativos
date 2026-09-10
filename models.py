class Agendamento:
    def __init__(self, cliente, telefone, servico, preco, barbeiro, data, horario, status="Agendado", id=None):
        self.id = id
        self.cliente = cliente
        self.telefone = telefone
        self.servico = servico
        self.preco = preco
        self.barbeiro = barbeiro
        self.data = data
        self.horario = horario
        self.status = status