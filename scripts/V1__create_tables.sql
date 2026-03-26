-- Criação das tabelas

CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS noticias (
    id_noticia SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    link TEXT NOT NULL,
    fonte VARCHAR(100),
    data_publicacao DATE
);

CREATE TABLE IF NOT EXISTS comentarios (
    id_comentario SERIAL PRIMARY KEY,
    conteudo TEXT NOT NULL,
    id_usuario INT NOT NULL,
    id_noticia INT NOT NULL,
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_noticia) REFERENCES noticias(id_noticia)
);

CREATE TABLE IF NOT EXISTS reacoes (
    id_reacao SERIAL PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    id_usuario INT NOT NULL,
    id_noticia INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_noticia) REFERENCES noticias(id_noticia),
    UNIQUE (id_usuario, id_noticia)
);
