-- seed.sql
-- Dados fictícios para teste

INSERT INTO clientes (nome, telefone, email, rua, numero, bairro, cidade, estado, cep, senha_hash, tipo_usuario) VALUES
('João Teste', '(11) 90000-0000', 'joao@teste.com', 'Rua Alpha', '123', 'Centro', 'São Paulo', 'SP', '01000-000', 'hash123', 'cliente'),
('Maria Exemplo', '(21) 98888-0000', 'maria@exemplo.com', 'Avenida Beta', '456', 'Jardins', 'Rio de Janeiro', 'RJ', '20000-000', 'hash456', 'cliente'),
('Admin Fictício', '(31) 97777-0000', 'admin@teste.com', 'Rua Admin', '1', 'Funcionários', 'Belo Horizonte', 'MG', '30000-000', 'hash789', 'admin');

INSERT INTO enderecos_cliente (id_cliente, cep, rua, numero, bairro, cidade, estado) VALUES
(1, '01000-000', 'Rua Alpha', '123', 'Centro', 'São Paulo', 'SP'),
(2, '20000-000', 'Avenida Beta', '456', 'Jardins', 'Rio de Janeiro', 'RJ');

INSERT INTO servicos_disponiveis (nome, imagem, valor, descricao) VALUES
('Serviço Teste A', 'servicoA.png', 100.00, 'Descrição exemplo do serviço A'),
('Serviço Teste B', 'servicoB.png', 150.00, 'Descrição exemplo do serviço B');

INSERT INTO agendamentos (id_cliente, id_endereco, data_agendamento, hora_inicio, hora_fim, status) VALUES
(1, 1, '2025-01-01', '09:00:00', '10:00:00', 'Pendente'),
(2, 2, '2025-01-02', '14:00:00', '15:00:00', 'Pendente');

INSERT INTO itens_agendamento (id_agendamento, id_servico, preco_no_agendamento) VALUES
(1, 1, 100.00),
(2, 2, 150.00);

INSERT INTO avaliacoes (id_cliente, nota, comentario) VALUES
(1, 4.5, 'Ótimo serviço!'),
(2, 5.0, 'Excelente atendimento!');
