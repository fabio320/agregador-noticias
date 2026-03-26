-- Criação de uma view

CREATE OR REPLACE VIEW view_noticias_comentarios AS
SELECT 
    n.titulo,
    u.nome AS usuario,
    c.conteudo,
    c.data
FROM comentarios c
JOIN usuarios u ON c.id_usuario = u.id_usuario
JOIN noticias n ON c.id_noticia = n.id_noticia;
