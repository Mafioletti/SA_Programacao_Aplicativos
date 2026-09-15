from flask import Flask, render_template
import agendamentos


app = Flask(__name__)


@app.route("/")
def inicio():
    lista = agendamentos.listar_agendamentos()
    return render_template("index.html", agendamentos=lista)


@app.route("/agendamentos")
def mostrar_agendamentos():
    lista = agendamentos.listar_agendamentos()
    return render_template("agendamentos.html", agendamentos=lista)


@app.route("/agendamentos/status/<status>")
def mostrar_por_status(status):
    lista = agendamentos.listar_por_status(status)
    return render_template("agendamentos.html", agendamentos=lista, filtro=status)


@app.route("/agendamento/<int:id>")
def detalhe_agendamento(id):
    agendamento = agendamentos.buscar_agendamento(id)
    return render_template("detalhe.html", agendamento=agendamento)


if __name__ == "__main__":
    app.run(debug=True)
