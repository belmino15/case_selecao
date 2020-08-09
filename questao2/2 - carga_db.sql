USE `DB_Fort`;

INSERT INTO d_Pessoa(ID_PESSOA, NM_PESSOA) VALUES
(1,'Lua Costa'),
(2,'Eduardo Cunha'),
(3,'José Simões');

INSERT INTO d_Loja(ID_LOJA, DS_NOME, DS_UF, DS_CIDADE, DS_EMPRESA, NU_CEP) VALUES
(1,'Loja1', 'CE', 'Fortaleza', 'Microsoft', '6000444'),
(2,'Loja2', 'AC', 'Rio Branco', 'Samsung', '5410923'),
(3,'Loja3', 'RJ', 'Rio de Janeiro', 'Microsoft', '6000444');

INSERT INTO d_Tempo(ID_TEMPO, DT_REF, NU_SEMANA, NU_MES, NU_TRIMESTRE, NU_SEMESTRE, NU_ANO) VALUES
(1, '2020-01-01', 1, 1, 1, 1, 2020),
(2, '2020-01-10', 2, 1, 1, 1, 2020),
(3, '2020-03-01', 12, 3, 1, 1, 2020),
(4, '2020-03-02', 12, 3, 1, 1, 2020),
(5, '2019-03-02', 12, 3, 1, 1, 2019);

INSERT INTO f_Vendas(ID_VENDA, VL_VENDA, NU_VENDA, VL_LUCRO, VL_CUSTO, ID_LOJA, ID_TEMPO, ID_PESSOA) VALUES
(1, 150, 2, 120, 30, 1, 1, 1),
(2, 200, 1, 150, 50, 2, 2, 2),
(3, 175, 1, 100, 75, 2, 3, 1),
(4, 125, 3, 90, 75, 1, 3, 2),
(5, 80, 1, 70, 10, 2, 4, 1),
(6, 250, 1, 200, 20, 1, 5, 2),
(7, 300, 2, 200, 50, 1, 2, 3);