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

    def exibir(self):
        print(f"ID: {self.id} | Cliente: {self.cliente} | Servico: {self.servico} | Barbeiro: {self.barbeiro} | Data: {self.data} | Horario: {self.horario} | Status: {self.status} | Preco: {self.preco}")
