CREATE TABLE lancamento(
codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(50) NOT NULL, 
data_vencimento DATE NOT NULL,
data_pagamento DATE,
valor decimal(10,2) NOT NULL,
observacao VARCHAR(100),
tipo VARCHAR(20) NOT NULL,
codigo_categoria BIGINT(20) NOT NULL,
codigo_pessoas BIGINT(20) NOT NULL,
FOREIGN KEY(codigo_categoria)REFERENCES categoria(codigo),
FOREIGN KEY(codigo_pessoas) REFERENCES pessoas(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas) values('Salario Mensal','2017-06-10', null, 6500.00, 'Distribuicao de Lucros', 'Receita', 1, 1);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Bahamas', '2017-02-10', '2017-02-10', 100.32, null, 'Despesa', 3, 3);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Top Club', '2017-06-10',null, 120, null, 'Receita', 4, 4);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Cemig', '2017-02-10', '2017-02-10', 110.44, 'Geracao', 'Receita', 3, 4);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Dmae', '2017-06-10', null, 200.30, null, 'Despesa', 3 , 5 );
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Extra', '2017-03-10', '2017-03-10', 1010.32, null, 'Receita', 4, 6);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Bahamas', '2017-06-10', null, 500, null, 'Rceita', 1, 7);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Top Club', '2017-03-10', '2017-03-10', 400.32, null, 'Despesa', 4 , 8);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Despachante', '2017-06-10', null, 123.64, 'Multas', 'Despesa', 3, 9);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Pneus', '2017-04-10', '2017-04-10', 665.33, null, 'Receita', 5, 10);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Cafe', '2017-06-10', null, 8.32, null, 'Despesa', 1, 5);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Eletronicos', '2017-04-10', '2017-04-10', 2100.32, null, 'Despesa', 5, 4);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Instrumenstos', '2017-06-10', null, 1040.32, null, 'Despesa', 4, 3);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Cafe', '2017-04-10', '2017-04-10', 4.32, null, 'Despesa', 4, 3);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoas)values('Lanche', '2017-06-10', null, 10.20, null, 'Despesa', 4, 1);

