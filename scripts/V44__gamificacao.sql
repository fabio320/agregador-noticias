CREATE TABLE IF NOT EXISTS niveis (
    id_nivel SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    pontuacao_minima INT NOT NULL
);

CREATE TABLE IF NOT EXISTS pontos (
    id_usuario INT PRIMARY KEY,
    pontuacao INT DEFAULT 0,
    id_nivel INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_nivel) REFERENCES niveis(id_nivel)
);
