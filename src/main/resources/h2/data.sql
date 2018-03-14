INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
    VALUES (1, 'http://www.h2database.com', 'N/A', 'RS', 'COMERCIAL', 'livro', '2010-10-05 10:20:25', 'livro',
        '2011-10-05 20:15:40');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
    VALUES (10, 'Rua das Oliveiras, 320', 'Santa Maria', 'RS', 'RESIDENCIAL', 'livro', '2010-10-05 10:20:25', 'livro',
        '2011-10-05 20:15:40');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (20, 'Rua das Orquideas, 135', 'Santa Maria', 'RS', 'COMERCIAL', 'livro', '2010-11-14 12:20:25', 'spring',
        '2011-12-05 10:23:20');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (30, 'Rua dos Cardeiais, 190', 'Porto Alegre', 'RS', 'RESIDENCIAL', 'livro', '2011-04-21 01:10:25', 'livro',
        '2013-10-05 12:11:50');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (40, 'Rua das Palhas, 20', 'São Paulo', 'SP', 'COMERCIAL', 'livro', '2011-08-18 06:06:25', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (50, 'Rua das Carmelias, 701', 'Santos', 'SP', 'RESIDENCIAL', 'livro', '2011-03-30 19:20:35', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (60, 'Av. dos Cristais, 182', 'Rio de Janeiro', 'RJ', 'RESIDENCIAL', 'spring', '2012-12-09 10:20:25', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (70, 'Av. dos Espiritos, 522', 'Rio de Janeiro', 'RJ', 'COMERCIAL', 'livro', '2012-03-19 13:23:35', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (80, 'Rua das Rosas, 159', 'Belo Horizonte', 'MG', 'RESIDENCIAL', 'spring', '2012-06-27 09:29:29', 'livro',
        '2013-10-05 02:23:23');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (90, 'Av. Floresta, 103', 'Porto Alegre', 'RS', 'COMERCIAL', 'livro', '2013-01-04 07:27:27', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (100, 'Rua das Araras, 16', 'Canoas', 'RS', 'COMERCIAL', 'livro', '2013-02-16 16:48:25', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (110, 'Rua das Lontras, 991', 'Canoas', 'RS', 'RESIDENCIAL', 'spring', '2013-12-25 11:10:11', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (120, 'Av. dos Cardeais, 433', 'Porto Alegre', 'RS', 'COMERCIAL', 'livro', '2014-10-04 15:23:35', 'livro',
        '2015-10-05 04:24:24');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (130, 'Rua das Oliveiras, 205', 'Santos', 'SP', 'RESIDENCIAL', 'livro', '2014-04-22 10:20:25', 'livro',
        '2015-11-25 16:10:35');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (140, 'Rua das Orquideas, 114', 'Santa Maria', 'RS', 'COMERCIAL', 'livro', '2015-08-28 12:22:33', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (150, 'Rua dos Mosquitos, 903', 'Campinas', 'SP', 'RESIDENCIAL', 'livro', '2016-03-30 19:20:35', NULL, NULL);

INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (1, 'H2 DATABASE', 0, '2010-10-05', 1, 'livro', '2010-10-05 10:20:25', 'livro', '2011-10-05 20:15:40');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (10, 'Ana Lúcia da Silva', 26, '2010-10-05', 10, 'livro', '2010-10-05 10:20:25', 'livro', '2011-10-05 20:15:40');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (20, 'Fabio dos Santos', 23, '2010-11-14', 20, 'livro', '2010-11-14 12:20:25', 'spring', '2011-12-05 10:23:20');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (30, 'Eduardo Nunes Silva', 34, '2011-04-21', 30, 'livro', '2011-04-21 01:10:25', 'livro', '2013-10-05 12:11:50');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (40, 'Vilmar Matos Beltrame', 31, '2011-08-18', 40, 'livro', '2011-08-18 06:06:25', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (50, 'Marcia Ribeiro', 28, '2011-03-30', 50, 'livro', '2011-03-30 19:20:35', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (60, 'Taís Bianchi', 30, '2012-12-09', 60, 'spring', '2012-12-09 10:20:25', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (70, 'Anete Pereira', 33, '2012-03-19', 70, 'livro', '2012-03-19 13:23:35', 'livro', '2013-10-05 10:20:25');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES
  (80, 'Aline Ribeiro Santos', 47, '2012-06-27', 80, 'spring', '2012-06-27 09:29:29', 'livro', '2013-10-05 02:23:23');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (90, 'Maria Luisa Vidal', 24, '2013-01-04', 90, 'livro', '2013-01-04 07:27:27', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES
  (100, 'Critiano Moura Santana', 36, '2013-02-16', 100, 'livro', '2013-02-16 16:48:25', 'livro', '2013-10-05 10:20:25');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (110, 'Gustavo Pereira Lopes', 21, '2013-12-25', 110, 'spring', '2013-12-25 11:10:11', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (120, 'Andriele Camargo', 32, '2014-10-04', 120, 'livro', '2014-10-04 15:23:35', 'livro', '2015-10-05 04:24:24');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES
  (130, 'Nelson Figueira Dri', 19, '2014-04-22', 130, 'livro', '2014-04-22 10:20:25', 'livro', '2015-11-25 16:10:35');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (140, 'Marta Gomes Lima', 25, '2015-08-28', 140, 'livro', '2015-08-28 12:22:33', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (150, 'Francine Pires', 20, '2016-03-30', 150, 'livro', '2016-03-30 19:20:35', NULL, NULL);
