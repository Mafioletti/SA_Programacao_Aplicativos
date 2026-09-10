DROP DATABASE IF EXISTS barbearia; -- apaga se ja existir (teste)
CREATE DATABASE barbearia CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; -- criar banco de dados
USE barbearia; -- usar banco

CREATE TABLE agendamentos ( -- criacao da tabela agendamentos
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    servico VARCHAR(100),
    preco DECIMAL(10,2),
    barbeiro VARCHAR(50),
    data DATE NOT NULL,
    horario VARCHAR(5),
    status VARCHAR(20) DEFAULT 'Agendado'
);

-- 8 agendamentos com datas, barbeiros e status variados (2 Concluidos e 1 Cancelado)
INSERT INTO agendamentos (cliente, telefone, servico, preco, barbeiro, data, horario, status) VALUES
('Carlos Silva', '(48) 99911-2233', 'Corte Masculino', 50.00, 'Joao', '2026-09-12', '09:00', 'Agendado'),
('Pedro Santos', '(48) 98822-3344', 'Barba', 35.00, 'Marcos', '2026-09-12', '10:30', 'Agendado'),
('Lucas Oliveira', '(48) 97733-4455', 'Corte + Barba', 80.00, 'Rafael', '2026-09-13', '14:00', 'Concluído'),
('Marcos Souza', '(48) 96644-5566', 'Corte Masculino', 50.00, 'Joao', '2026-09-13', '15:30', 'Concluído'),
('Rafael Costa', '(48) 95555-6677', 'Pezinho', 20.00, 'Marcos', '2026-09-14', '09:00', 'Agendado'),
('Joao Pereira', '(48) 94466-7788', 'Corte + Barba', 80.00, 'Rafael', '2026-09-14', '11:00', 'Cancelado'),
('Thiago Alves', '(48) 93377-8899', 'Barba', 35.00, 'Joao', '2026-09-15', '16:00', 'Agendado'),
('Diego Fernandes', '(48) 92288-9900', 'Corte Masculino', 50.00, 'Marcos', '2026-09-15', '17:30', 'Agendado');
