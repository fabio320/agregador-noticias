Agregador de Notícias
📌 Descrição

Este projeto consiste na criação de um banco de dados relacional utilizando PostgreSQL para um sistema agregador de notícias. A aplicação permite armazenar notícias, cadastrar usuários e possibilitar interações como comentários e reações.

🎯 Objetivo

Desenvolver uma estrutura de banco de dados eficiente que permita o gerenciamento de notícias e a interação dos usuários, promovendo organização e engajamento dentro da plataforma.

👥 Público-alvo

Usuários interessados em acompanhar notícias online e interagir com conteúdos por meio de comentários e reações.

🗂️ Modelo de Dados
erDiagram
    USUARIOS ||--o{ COMENTARIOS : faz
    USUARIOS ||--o{ REACOES : realiza
    NOTICIAS ||--o{ COMENTARIOS : possui
    NOTICIAS ||--o{ REACOES : recebe

    USUARIOS {
        int id_usuario PK
        string nome
        string email
        string senha
    }

    NOTICIAS {
        int id_noticia PK
        string titulo
        string link
        string fonte
        date data_publicacao
    }

    COMENTARIOS {
        int id_comentario PK
        string conteudo
        int id_usuario FK
        int id_noticia FK
        timestamp data
    }

    REACOES {
        int id_reacao PK
        string tipo
        int id_usuario FK
        int id_noticia FK
    }
