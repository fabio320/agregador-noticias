CREATE OR REPLACE FUNCTION adicionar_pontos_comentario()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pontos
    SET pontuacao = pontuacao + 3
    WHERE id_usuario = NEW.id_usuario;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_comentario
AFTER INSERT ON comentarios
FOR EACH ROW
EXECUTE FUNCTION adicionar_pontos_comentario();
