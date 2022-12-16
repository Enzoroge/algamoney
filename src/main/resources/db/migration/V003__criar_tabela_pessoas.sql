CREATE TABLE pessoas(
codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  logradouro VARCHAR(20),
  endereco VARCHAR(20),
  numero VARCHAR(20),
  complemento VARCHAR(30),
  bairro VARCHAR(20),
  cep VARCHAR(15),
  cidade VARCHAR(20),
  estado VARCHAR(20),
  ativo BOOLEAN NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



