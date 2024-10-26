CREATE TABLE tb_usuarios (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255),
    ID_REGIAO INT,
    FOREIGN KEY (ID_REGIAO) REFERENCES tb_regiao(ID_REGIAO)
);

CREATE TABLE tb_regiao (
    ID_REGIAO INT PRIMARY KEY,
    PAIS VARCHAR(50),
    ESTADO VARCHAR(50),
    CIDADE VARCHAR(50)
);

CREATE TABLE tb_resultados (
    id_resultado INT PRIMARY KEY,
    notaLikert INT,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuarios(id_usuario)
);

