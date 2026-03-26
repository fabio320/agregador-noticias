-- Inserção de dados

INSERT INTO usuarios (nome, email, senha) VALUES
('João', 'joao@email.com', '123'),
('Maria', 'maria@email.com', '456');

INSERT INTO noticias (titulo, link, fonte, data_publicacao) VALUES
('Nova tecnologia lançada', 'https://site.com/noticia1', 'TechNews', '2026-03-25'),
('Economia em alta', 'https://site.com/noticia2', 'FinanceNews', '2026-03-24');

INSERT INTO comentarios (conteudo, id_usuario, id_noticia) VALUES
('Muito interessante!', 1, 1),
('Não gostei muito.', 2, 2);

INSERT INTO reacoes (tipo, id_usuario, id_noticia) VALUES
('relevante', 1, 1),
('sem_interesse', 2, 2);
