INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (1, 'http://hsqldb.org/', 'N/A', 'RS', 'COMERCIAL', 'livro', '2010-10-05 10:20:25', 'livro', 
  		'2011-10-05 20:15:40');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (10, 'Rua das Oliveiras, 20', 'Santa Maria', 'RS', 'RESIDENCIAL', 'livro', '2010-10-05 10:20:25', 'livro',
        '2011-10-05 20:15:40');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (20, 'Rua das Orquideas, 105', 'Santa Maria', 'RS', 'COMERCIAL', 'livro', '2010-11-14 12:20:25', 'spring',
        '2011-12-05 10:23:20');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (30, 'Rua dos Cardeiais, 90', 'Porto Alegre', 'RS', 'RESIDENCIAL', 'livro', '2011-04-21 01:10:25', 'livro',
        '2013-10-05 12:11:50');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (40, 'Rua das Palhas, 123', 'São Paulo', 'SP', 'COMERCIAL', 'livro', '2011-08-18 06:06:25', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (50, 'Rua das Carmelias, 101', 'Campinas', 'SP', 'RESIDENCIAL', 'livro', '2011-03-30 19:20:35', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (60, 'Av. dos Cristais, 80', 'Rio de Janeiro', 'RJ', 'RESIDENCIAL', 'spring', '2012-12-09 10:20:25', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (70, 'Av. dos Espiritos, 322', 'Rio de Janeiro', 'RJ', 'COMERCIAL', 'livro', '2012-03-19 13:23:35', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (80, 'Rua das Rosas, 109', 'Belo Horizonte', 'MG', 'RESIDENCIAL', 'spring', '2012-06-27 09:29:29', 'livro',
        '2013-10-05 02:23:23');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (90, 'Av. Floresta, 13', 'Porto Alegre', 'RS', 'COMERCIAL', 'livro', '2013-01-04 07:27:27', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (100, 'Rua das Araras, 356', 'Canoas', 'RS', 'COMERCIAL', 'livro', '2013-02-16 16:48:25', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (110, 'Rua das Lontras, 71', 'Guaiba', 'RS', 'RESIDENCIAL', 'spring', '2013-12-25 11:10:11', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (120, 'Av. dos Cardeais, 733', 'Porto Alegre', 'RS', 'COMERCIAL', 'livro', '2014-10-04 15:23:35', 'livro',
        '2015-10-05 04:24:24');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (130, 'Rua das Oliveiras, 275', 'Campinas', 'SP', 'RESIDENCIAL', 'livro', '2014-04-22 10:20:25', 'livro',
        '2015-11-25 16:10:35');
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (140, 'Rua das Orquideas, 804', 'Santa Maria', 'RS', 'COMERCIAL', 'livro', '2015-08-28 12:22:33', NULL, NULL);
INSERT INTO ENDERECOS (id, logradouro, cidade, estado, tipo, created_by, created_date, modified_by, modified_date)
  VALUES (150, 'Rua dos Mosquitos, 103', 'Santos', 'SP', 'RESIDENCIAL', 'livro', '2016-03-30 19:20:35', NULL, NULL);

INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (1, 'HSQL DATABASE', 0, '2010-10-05', 1, 'livro', '2010-10-05 10:20:25', 'livro', '2011-10-05 20:15:40');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (10, 'Ana da Silva', 30, '2010-10-05', 10, 'livro', '2010-10-05 10:20:25', 'livro', '2011-10-05 20:15:40');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (20, 'Eduardo Coelho', 25, '2010-11-14', 20, 'livro', '2010-11-14 12:20:25', 'spring', '2011-12-05 10:23:20');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (30, 'Juliana Boemo', 39, '2011-04-21', 30, 'livro', '2011-04-21 01:10:25', 'livro', '2013-10-05 12:11:50');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (40, 'Aniele Viscentine Santos', 23, '2011-08-18', 40, 'livro', '2011-08-18 06:06:25', 'livro',
        '2013-10-05 10:20:25');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (50, 'Marcela da Costa Ribeiro', 27, '2011-03-30', 50, 'livro', '2011-03-30 19:20:35', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (60, 'Claudio Ramos Figueira', 36, '2012-12-09', 60, 'spring', '2012-12-09 10:20:25', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (70, 'Ana Soares de Souza', 34, '2012-03-19', 70, 'livro', '2012-03-19 13:23:35', 'livro', '2013-10-05 10:20:25');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES
  (80, 'Bruna Costa Silva', 43, '2012-06-27', 80, 'spring', '2012-06-27 09:29:29', 'livro', '2013-10-05 02:23:23');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (90, 'Carla Gomes Costa', 26, '2013-01-04', 90, 'livro', '2013-01-04 07:27:27', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES
  (100, 'Juliane Costa Fagundes', 30, '2013-02-16', 100, 'livro', '2013-02-16 16:48:25', 'livro', '2013-10-05 10:20:25');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (110, 'Marta Dill da Silva', 20, '2013-12-25', 110, 'spring', '2013-12-25 11:10:11', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (120, 'Gilberto Camardo de Souza', 21, '2014-10-04', 120, 'livro', '2014-10-04 15:23:35', 'livro', '2015-10-05 04:24:24');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES
  (130, 'Roberto Gomes Pereira', 29, '2014-04-22', 130, 'livro', '2014-04-22 10:20:25', 'livro', '2015-11-25 16:10:35');
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (140, 'Marisa de Souza Cortes', 42, '2015-08-28', 140, 'livro', '2015-08-28 12:22:33', NULL, NULL);
INSERT INTO CONTATOS (id, nome, idade, data_cadastro, endereco_id, created_by, created_date, modified_by, modified_date)
  VALUES (150, 'Marcelo Gomes da Silveira', 27, '2016-03-30', 150, 'livro', '2016-03-30 19:20:35', NULL, NULL);