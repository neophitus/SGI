-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 28-Maio-2016 às 17:03
-- Versão do servidor: 5.7.12
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sgi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atuacao`
--

CREATE TABLE `atuacao` (
  `idatuacao` int(10) UNSIGNED ZEROFILL NOT NULL,
  `atuacao` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atuacao`
--

INSERT INTO `atuacao` (`idatuacao`, `atuacao`) VALUES
(0000000001, 'SAÚDE'),
(0000000002, 'TRANSPORTE'),
(0000000003, 'EDUCAÇÃO'),
(0000000004, 'SEGURANÇA'),
(0000000005, 'CULTURA'),
(0000000006, 'LAZER'),
(0000000007, 'OUTROS'),
(0000000008, 'ESPORTES'),
(0000000009, 'SERVIÇOS SOCIAIS');

-- --------------------------------------------------------

--
-- Stand-in structure for view `base_rel`
-- (See below for the actual view)
--
CREATE TABLE `base_rel` (
`idcad` int(10) unsigned zerofill
,`nome` varchar(254)
,`apelido` varchar(254)
,`tipo_pessoa` varchar(45)
,`sigla_partido` varchar(45)
,`id_regiao` int(11)
,`tel_fixo` varchar(45)
,`tel_celular` varchar(45)
,`whatsapp` varchar(45)
,`endereco` longtext
,`bairro` varchar(254)
,`cidade` varchar(254)
,`estado` varchar(254)
,`CEP` varchar(45)
,`data_nasc` varchar(45)
,`email` varchar(254)
,`facebook` varchar(254)
,`twitter` varchar(254)
,`instagram` varchar(254)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastros`
--

CREATE TABLE `cadastros` (
  `idcadastros` int(10) UNSIGNED ZEROFILL NOT NULL,
  `nome` varchar(254) DEFAULT NULL,
  `apelido` varchar(254) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `partido` int(11) DEFAULT NULL,
  `tel_fixo` varchar(45) DEFAULT NULL,
  `tel_celular` varchar(45) DEFAULT NULL,
  `whatsapp` varchar(45) DEFAULT NULL,
  `endereco` longtext,
  `bairro` varchar(254) DEFAULT NULL,
  `cidade` varchar(254) DEFAULT NULL,
  `estado` varchar(254) DEFAULT NULL,
  `CEP` varchar(45) DEFAULT NULL,
  `data_nasc` varchar(45) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `facebook` varchar(254) DEFAULT NULL,
  `twitter` varchar(254) DEFAULT NULL,
  `instagram` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastros`
--

INSERT INTO `cadastros` (`idcadastros`, `nome`, `apelido`, `tipo`, `partido`, `tel_fixo`, `tel_celular`, `whatsapp`, `endereco`, `bairro`, `cidade`, `estado`, `CEP`, `data_nasc`, `email`, `facebook`, `twitter`, `instagram`) VALUES
(0000000011, 'Edwaldo Vicente de Souza', 'Edwaldo Souza', 1, 14, '', '31-98488-6671', '31-98488-6671', 'Rua Expedicionários, 1166', 'Novo Progresso', 'Contagem', 'Minas Gerais', '', '31/05/67', 'edwaldosouza@yahoo.com.br', NULL, NULL, NULL),
(0000000012, 'Eliane Fatima Moteiro de Castro', '', 1, 13, '', '991788012', '', 'Rua José da Silva Couto, 14', 'Novo Progresso', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000013, 'Eliezete Francisco Rocha', 'Mucuri', 1, 14, '31-2585-3024', '31-98299-4420', '31-98897-7915', 'Av Carmelita Drumond Diniz, 408', 'Parque Marcanã', 'Contagem', 'Minas Gerais', '', '', 'mucuri@rembreagens.com.br', NULL, NULL, NULL),
(0000000014, 'Elizabet de Souza Silva', 'Beth da Feira', 1, 14, '31-3391-1495', '31-99179-0112', '31-99179-0112', 'Av. Londres, 405/102', 'Santa Cruz ', 'Contagem', 'Minas Gerais', '', '06/10/55', 'Christianevimieiro@gmail.com', NULL, NULL, NULL),
(0000000015, 'Elmo Lima Lavinas Telles', 'Elmo do Escolar', 1, 8, '3392-9220', '999013827', '999013827', 'VL 8, 186 ', 'Nova Contagem', 'Contagem', 'Minas Gerais', '', '10/03/53', 'elmo.doescolar@yahoo.com.br', NULL, NULL, NULL),
(0000000016, 'Erivelto Moreira da Silva', 'Erivelto Bem Mireiro', 1, 8, '33943087', '31-98571-0627', '31-98571-0627', 'Rua  Padre Feijó, 45', 'Novo Progresso', 'Contagem', 'Minas Gerais', '', '06/08/79', '', NULL, NULL, NULL),
(0000000017, 'Evaldo de Oliveira Silva', 'Dr.Evaldo Silva', 1, 14, '31-2564-6670', '31-99127-6413', '31-99127-6413', 'Rua Manhumirim', 'JD Industrial', 'Contagem', 'Minas Gerais', '', '27/12/80', 'evaldoosilva@gmail.com', NULL, NULL, NULL),
(0000000018, 'Fabiano Augusto dos Reis', 'Missionario Fabiano', 1, 2, '', '98516-7858', '98434-9185', 'Rua Urucuri, 469', 'Novo Eldorado', 'Contagem', 'Minas Gerais', '', '13/03/78', 'fabianoaugustoreis@hotmail.com', NULL, NULL, NULL),
(0000000019, 'Francisco de Assis da Mata', 'Assis do Agua Branca', 1, 8, '33932175', '975701761', '', 'Rua O, 194', 'Conj. Agua Branca', 'Contagem', 'Minas Gerais', '', '16/04/55', 'assismata@yahoo.com.br', NULL, NULL, NULL),
(0000000020, 'Frederico Ricardo', 'Fredim', 1, 8, '', '994032606', '994032606', '', 'Bairro Amazonas', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000021, 'Geralda Ap. Nogueira', 'Gê Nogueira', 1, 8, '31-3351-0887', '996734318', '996734318', 'Rua Iretama, 503', 'Novo Eldorado', 'Contagem', 'Minas Gerais', '', '20/out', 'pontomutacao2@gmail.com', NULL, NULL, NULL),
(0000000022, 'Geraldo Magela da Costa', 'Geraldo Magela', 1, 8, '3391-5066', '984839001', '984839001', 'Rua Courupita, 856', 'Eldorado', 'Contagem', 'Minas Gerais', '', '11/07/68', 'contabilidadegmc@yahoo.com.br', NULL, NULL, NULL),
(0000000023, 'Geraldo Vitor de Almeida', 'Geraldo Vitor', 1, 14, '31-3361-6455', '31-995130498', '', 'Rua Jorge Justino dos Santos, 342', 'Inconfidentes', 'Contagem', 'Minas Gerais', '', '30/09/49', '', NULL, NULL, NULL),
(0000000024, 'Hamilton Dalcantara e Almeida', 'Hamilton Dalcantara', 1, 14, '31-2585-0514', '31-98257-7589', '31-98257-7589', 'Rua Padre Denerva Gomes, 45', 'Alvorada', 'Contagem', 'Minas Gerais', '', '07/09/92', 'hamiltonhistory@hotmail.com', NULL, NULL, NULL),
(0000000025, 'Isabella Cristina Souza dos Santos', '', 1, 13, '', '98874-2475', '', 'Rua Rio Mossoro, 625', 'Riacho das Pedras', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000026, 'Ismênia Aparecida de Freitas', 'Ismênia Esteticista', 1, 14, '', '986909736', '', 'Amameda dos Engenheiros, 306', 'Candida Ferreira', 'Contagem', 'Minas Gerais', '', '16/10/65', 'ismeniaestetic@gmail.com', NULL, NULL, NULL),
(0000000027, 'Ivan de Assis Soares', '', 1, 13, '31-33636785', '', '', 'Rua dos Austriacos, 539', 'Flamengo', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000028, 'Izabel Cristina da Silva', 'Bel', 1, 8, '', '988418047', '', 'Retiro do Triunfo, 661', 'Retiro', 'Contagem', 'Minas Gerais', '', '05/10/68', '', NULL, NULL, NULL),
(0000000029, 'Jacson Silva de Souza', 'Jacson do Gás', 1, 8, '3355-2202', '993540385', '98909-4318', 'Av. Rio das Velhas, 725', 'Novo Riacho', 'Contagem', 'Minas Gerais', '', '06/06/89', 'jacson.silva_s@yahoo.com.br', NULL, NULL, NULL),
(0000000030, 'Jadson Aquino dos Santos', 'Jadson Uber', 1, 8, '3382-5694', '996288618', '996288618', 'Coronel Salatiel Vaz, 401', 'Industrial', 'Contagem', 'Minas Gerais', '', '20/04/87', 'blaib_gate@hotmail.com', NULL, NULL, NULL),
(0000000031, 'Jaiston Marcelo de Oliveira', 'Não é pré candidato', 1, 13, '', '99909-9040', '99909-9040', 'Rua Doutor Francisco Sales, 365', 'Sede', 'Contagem', 'Minas Gerais', '', '02/10/73', 'grilloctg@gmail.com', NULL, NULL, NULL),
(0000000032, 'Janete Sebastiana Almeida', 'Janete Almeida', 1, 8, '', '98586-5932', '97509-7193', 'Rua Luciana carvalho pereira, 158', 'Pedra Azul', 'Contagem', 'Minas Gerais', '', '17/09/71', 'janetehotdog@gmail.com', NULL, NULL, NULL),
(0000000033, 'Jerson Braga Maia', 'Caxico', 1, 13, '', '31-985762199', '985762199', '', 'Industrial', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000034, 'José Alvimar Ramos da Silva', 'Zezinho da Silva', 1, 8, '33529055', '995114445', '995114445', 'Rua Jordânia, 383', 'Pedra Azul', 'Contagem', 'Minas Gerais', '', '04/06/77', 'sindfindvidromg@hotmail.com', NULL, NULL, NULL),
(0000000035, 'José Carlos Xavier', '', 1, 13, '33920206', '', '', 'Rua Rio Congo, 785', 'Novo Riacho', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000036, 'José de Azevedo Leão', 'José Leão', 1, 8, '3398-2392', '988013736', '', 'Eufrazia Augusta de Jesus, 401', 'Santa Helena', 'Contagem', 'Minas Gerais', '', '22/07/54', 'jaleao2009@hotmail.com', NULL, NULL, NULL),
(0000000037, 'José Maria Gonçalves Madeira', '', 1, 13, '', '992485386', '', 'Rua Joaquim José, ', 'Fonte Grande', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000038, 'Josmar Lopes Paiva', '', 1, 13, '', '99922-8468', '', 'Rua João Yenacio Ferreira, 557', 'Santa Helena', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000039, 'Kilder Preira Rodrigues', 'Kilder Rodrigues do São Luiz', 1, 8, '3397-5341', '', '', 'Goias, 06', 'Petrolandia', 'Contagem', 'Minas Gerais', '', '29/08/75', 'kilder@ctbh.com.br', NULL, NULL, NULL),
(0000000040, 'Leandro Tadeu de Oliveira Silva', 'Leandro Tadeu', 1, 8, '', '98576-2918', '98576-2918', 'Rua José Mendes Ferreira, 132', 'Colorado', 'Contagem', 'Minas Gerais', '', '28/01/83', 'leandrotadeuu@gmail.com', NULL, NULL, NULL),
(0000000041, 'Leilane Angelica Mendes Barcelos', 'Leilane Xuxa', 1, 8, '2564-3836', '31-99867-6568', '31-99867-6568', 'Rua das Acacias, 134', 'Nsra do Carmo', 'Contagem', 'Minas Gerais', '', '03/06/61', 'pc.leilanebarcelos@gmail.com', NULL, NULL, NULL),
(0000000042, 'Lucas da Silva', 'Lucas Cardoso', 1, 8, '', '997769656', '', 'Av. VP 01, 1755', 'Nova Contagem', 'Contagem', 'Minas Gerais', '', '10/07/60', 'jornaldistrital@yahoo.com.br', NULL, NULL, NULL),
(0000000043, 'Luíz Carlos dos Reis ', 'Luizinho do Retiro', 1, 13, '', '99827-6633', '', 'Rua Retiro dos Jovens, 25', 'Retiro', 'Contagem', 'Minas Gerais', '', '24/05/63', '', NULL, NULL, NULL),
(0000000044, 'Luiz Fernando Avelar dos Santos', 'Dr. Luiz Fernando', 1, 8, '3351-7576', '999781073', '999781073', 'Rua Norberto Mayer, 1759', 'Eldorado', 'Contagem', 'Minas Gerais', '', '24/11/71', 'lfcardio@uol.com.br', NULL, NULL, NULL),
(0000000045, 'Madalena Afonso da Silva Reis', 'Nana Creche Escola', 1, 8, '3394-7189', '', '', 'Menino do Engenho, 50', 'Jardim do Lago', 'Contagem', 'Minas Gerais', '', '19/11/46', '', NULL, NULL, NULL),
(0000000046, 'Magna Aparecida Viana', 'Magna Show', 1, 13, '', '991642457', '991642457', 'Rua G, 261', 'Colorado', 'Contagem', 'Minas Gerais', '', '25/04/72', 'magna_viana@yahoo.com.br', NULL, NULL, NULL),
(0000000047, 'Marcelo Dolisse', 'Não é pré candidato', 1, 8, '3398-5453', '98566-8184', '98566-8184', 'Rua Francisco Cassimiro Davila, 100', 'Bernardo Monteiro', 'Contagem', 'Minas Gerais', '', '08/02/59', 'marcelodolisse@hotmail.com', NULL, NULL, NULL),
(0000000048, 'Marcio de Oliveira Juinior', 'Marcio Jr', 1, 13, '', '99665-2886', '99665-2886', 'Rua 13, 129', 'Sapucaia I', 'Contagem', 'Minas Gerais', '', '30/09/78', 'marciodocaminho@gmail.com', NULL, NULL, NULL),
(0000000049, 'Marcio Roberto Teixeira', '', 1, 13, '', '', '', '', '', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000050, 'Marcos Antonio Botelho Nemamm', 'Marcos Botelho', 1, 14, '', '98699-1859', '98699-1859', 'Rua Cedro, 425', 'Jd Laguna', 'Contagem', 'Minas Gerais', '', '25/01/71', 'adv.marcosbotelho@gmail.com', NULL, NULL, NULL),
(0000000051, 'Marcos José Moreira', 'Marquinho Jairzinho', 1, 13, '31-3357-6695', '31-98658-8425', '', 'Rua Aziz Abras, 100', 'Balneario Ressaca', 'Contagem', 'Minas Gerais', '', '24/01/57', 'marquinhojairzinhoressaca@gmail.com', NULL, NULL, NULL),
(0000000052, 'Margarete das Dores de Oliveira', 'Margarete Zoi Verde', 1, 13, '3393-6155', '988046184', '988046184', 'Rua Cento e Trinta e Seis, 261', 'Jardim Laguna', 'Contagem', 'Minas Gerais', '', '31/01/60', 'margaretedores@yahoo.com.br', NULL, NULL, NULL),
(0000000053, 'Maria de Lourdes Rodrigues Gomes', 'Loura do Colonial', 1, 14, '31-3398-8033', '31-99139-9638', '31-99139-9638', 'Rua Palmeiras, 1530', 'Colonial', 'Contagem', 'Minas Gerais', '', '15/05/61', 'guinguinhaloura@hotmail.com', NULL, NULL, NULL),
(0000000054, 'Maria Isabel Rosa da Mata', 'Maria Isabel Vovozona', 1, 14, '31-3333-7515', '31-99200-9021', '', 'Rua Rio Negro, 164', 'Amazonas', 'Contagem', 'Minas Gerais', '', '07/03/45', 'mariaisabelvovozona@gmail.com', NULL, NULL, NULL),
(0000000055, 'Maria José M.', '', 1, 13, '', '', '', '', '', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000056, 'Mario Conceição Felisbert', 'Balu de Nova Contagem', 1, 14, '31-3392-8885', '31-98850-2874', '31-98850-2874', 'Av.dos Retirantes, 15', 'Retiro', 'Contagem', 'Minas Gerais', '', '11/02/72', 'baluturminhadaalegria08@gmail.com', NULL, NULL, NULL),
(0000000057, 'Reinaldo Robson de Castro', 'Reinaldo', 1, 14, '31-2567-3137', '31-99363-9958', '31-99363-9958', 'Av.Londres, 27', 'Novo Eudorado', 'Contagem', 'Minas Gerais', '', '12/05/65', 'rinaldopvcontagem@gmail.com', NULL, NULL, NULL),
(0000000058, 'Reiner Gotschalg', '', 1, 13, '3072-3607', '', '', 'Rua Natal Verones, 1237', 'Três Barras', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000059, 'Ricardo Aparecido de Castro', 'Ricardo de Castro', 1, 8, '', '998339865', '998339865', 'São José, 273', 'Agua Branca', 'Contagem', 'Minas Gerais', '', '03/06/69', 'ricardoimoveismg@gmail.com', NULL, NULL, NULL),
(0000000060, 'Rodinele Campos', '', 1, 8, '', '97130-1500', '', 'Rua Henriqueta Mendonça Rigolon, açougue na esquina ', 'Pedra Azul', 'Contagem', 'Minas Gerais', '', '', '_', NULL, NULL, NULL),
(0000000061, 'Rogeres Marques Guimarães', 'Roger', 1, 8, '36565317', '997244695', '997244695', 'Rua Anfonso Pensa, 224', 'JK', 'Contagem', 'Minas Gerais', '', '03/10/65', 'rogermarquesguimaraes@hotmail.com', NULL, NULL, NULL),
(0000000062, 'Rogerio Gomes da Silva', 'Irmão Rogério', 1, 14, '31-35652282', '31-98110-1464', '31-98110-1464', 'Rua Rio Branco, 364', 'Amazonas', 'Contagem', 'Minas Gerais', '', '10/05/67', 'rogeriojequiti@yahoo.com.br', NULL, NULL, NULL),
(0000000063, 'Ronaldo Moraes Pinto', '', 1, 13, '', '991089050', '', 'Rua Drozimbo Moreira, 175', 'Inconfidentes', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000064, 'Ronaldo Paulo da Silva', '', 1, 13, '', '998832884', '', 'Rua, J, 65', 'Bernardo Monteiro', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000065, 'Rosimary da Silva', '', 1, 13, '3357-7064', '', '', 'Rua José Candido Palhares, 8', 'Jardim Laguna', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000066, 'Rosimeire de Souza', 'Meire do Juarez', 1, 8, '3355-6951', '98754-1746', '98754-1746', 'Av. Brasileira, 214', 'Nacional', 'Contagem', 'Minas Gerais', '', '13/04/67', '_', NULL, NULL, NULL),
(0000000067, 'Rubens Freitas Siqueira', 'Pastor Rubens', 1, 14, '31-3398-2634', '31-98636-7176', '31-98636-7176', 'Rua Safira, 40', 'Santa Luzia', 'Contagem', 'Minas Gerais', '', '07/04/70', 'pastorubensfs@hotmail.com', NULL, NULL, NULL),
(0000000068, 'Sabrina Vidigal', 'Sabrina Vidigal', 1, 14, '31-98571-6014', '', '', 'Rua Rio Solimões, 426/101', 'Novo Riacho', 'Contagem', 'Minas Gerais', '', '24/12/82', 'sabrinaavidigal@gmail.com', NULL, NULL, NULL),
(0000000069, 'Salua de Campos Mattar', 'Salua Mattar', 1, 8, '', '991830569', '991830569', 'Av. Nossa sra da Conçeição, 100', 'Sede', 'Contagem', 'Minas Gerais', '', '12/abr', 'saluamattar@yahoo.com.br', NULL, NULL, NULL),
(0000000070, 'Silvio Antonio dos Santos', 'Não é pré candidato', 2, 8, '2559-8424', '99292-1064', '', 'Rua Lorival Alves Batista, 418', 'Bernardo Monteiro', 'Contagem', 'Minas Gerais', '', '08/07/49', 'silvaoasantos@gmail.com', NULL, NULL, NULL),
(0000000071, 'Soraia Peixoto Maciel', 'Prof. Soraia Peixoto', 1, 13, '3046-0710', '97580-7746', '97580-7746', 'Rua Vaticano, 46', 'Santa Cruz', 'Contagem', 'Minas Gerais', '', '09/12/70', 'soraia.pexoto@gmail.com', NULL, NULL, NULL),
(0000000072, 'Suely Bispo dos Santos', 'Suely Bispo', 1, 14, '', '31-98727-8170', '31-98727-8170', 'Rua Igaraçu, 502', 'Novo Eldorado', 'Contagem', 'Minas Gerais', '', '03/09/65', 'suebol@oi.com.br', NULL, NULL, NULL),
(0000000073, 'Tiago Rodrigues Santana', 'Tiago Mãos de Tesoura', 1, 14, '31-3021-2209', '31-98655-6869', '31-98655-6869', 'Rua Floriano Peixoto, 1246', 'Nacional', 'Contagem', 'Minas Gerais', '', '07/01/85', 'galo13marcos@gmail.com', NULL, NULL, NULL),
(0000000074, 'Valmiro Alves Lopes', 'Miro', 1, 8, '30460650', '991562270', '', 'Rua Francisco Leandro da Cunha, 302', 'Nossa sra de Fatima', 'Contagem', 'Minas Gerais', '', '27/12/67', 'contatovalmiromiro@hotmail.com', NULL, NULL, NULL),
(0000000075, 'Vânia Patricia Lionardo dos Santos', 'Vânia Patricia', 1, 13, '', '99710-3913', '99710-3913', 'Rua Argemiro Mendes Magalhães', 'Pedra Azul', 'Contagem', 'Minas Gerais', '', '31/03/80', 'vaniapatty@gmail.com', NULL, NULL, NULL),
(0000000076, 'Vilma Candida da Silva Oliveira', 'Vilma Candida - Tatica', 1, 14, '31-3392-1756', '31-98614-5784', '31-97565-8408', 'Av.Potiguara, 782', 'Novo Eldorado', 'Contagem', 'Minas Gerais', '', '19/09/69', 'vilma_hand@yahoo.com.br', NULL, NULL, NULL),
(0000000077, 'Walison Penteado', 'Pretinho Industrial', 1, 13, '2564-5280', '99135-8854', '99135-8854', 'Rua Guilherme Ciriene, 363', 'Jardim Industrial', 'Contagem', 'Minas Gerais', '', '29/10/80', 'contatowp@yahoo.com.br', NULL, NULL, NULL),
(0000000078, 'Wallisson Soares dos Reis ', 'Wallisson Soares dos Reis ', 1, 8, '', '99842-2444', '99842-2444', 'Rua Agua Formosa, 848', 'Pedra Azul', 'Contagem', 'Minas Gerais', '', '18/10/69', 'walisson.soares10@hotmail.com', NULL, NULL, NULL),
(0000000079, 'Wanderlei Costa da Silva', 'Wanderlei - Tigrão', 1, 14, '31-98955-9979', '', '31-98955-9979', 'Rua das Hortências, 620', 'Sapucaias I', 'Contagem', 'Minas Gerais', '', '15/03/71', 'wanderleicosta6@hotmail.com', NULL, NULL, NULL),
(0000000080, 'Wanderley de Castro Souza', 'Derley', 1, 13, '3352-2696', '30511475', '992202375', 'Av. Francisco Firmo de Matos, 1075', 'Eldorado', 'Contagem', 'Minas Gerais', '', '30/03/76', 'derleyfrl@yahoo.com.br', NULL, NULL, NULL),
(0000000081, 'Wanderson da Silva Souza', 'Wallisson Soares dos Reis ', 1, 8, '2564-5262', '973072707', '973072707', 'Av. Agua Branca, 121', 'Agua Branca', 'Contagem', 'Minas Gerais', '', '08/10/77', 'panricodobrasil@gmail.com', NULL, NULL, NULL),
(0000000082, 'Wellington de Souza Silveira', 'Wellington Silveira', 1, 13, '31-3351-1104', '31-98391-8393', '31-98391-8393', 'Rua Rio Congo, 912', 'Novo Riacho', 'Contagem', 'Minas Gerais', '', '04/04/83', 'wellington.etinho@yahoo.com.br', NULL, NULL, NULL),
(0000000083, 'Wellington Souza Silveira', '', 1, 13, '', '', '', '', '', 'Contagem', 'Minas Gerais', '', '', '', NULL, NULL, NULL),
(0000000084, 'Wesley Ferreira da Silva', 'Prof Wesley', 1, 8, '', '31- 97116-2009', '31- 97116-2009', 'Rua Roma, 560', 'Jd Riacho das Pedras', 'Contagem', 'Minas Gerais', '', '12/08/81', 'leouemg@yahoo.com.br', NULL, NULL, NULL),
(0000000085, 'Paulo Eduardo Martins Moreira', 'Paulo Moreira', 2, 8, '(31)3398-0287', '(31)99595-6140', '(31)99595-6140', 'Rua J, 111', 'Fonte Grande', 'Contagem', 'Minas Gerais', '32.015-470', '22/09/1976', 'neophitus@gmail.com', 'https://facebook.com/neophitus', 'https://twitter.com/paulommoreira', 'https://instagram.com/neophitus');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cadview`
-- (See below for the actual view)
--
CREATE TABLE `cadview` (
`idcadastros` int(10) unsigned zerofill
,`nome` varchar(254)
,`apelido` varchar(254)
,`tipo` varchar(45)
,`sigla_partido` varchar(45)
,`tel_fixo` varchar(45)
,`tel_celular` varchar(45)
,`whatsapp` varchar(45)
,`endereco` longtext
,`bairro` varchar(254)
,`cidade` varchar(254)
,`estado` varchar(254)
,`CEP` varchar(45)
,`data_nasc` varchar(45)
,`email` varchar(254)
,`facebook` varchar(254)
,`twitter` varchar(254)
,`instagram` varchar(254)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `idconfig` int(10) UNSIGNED ZEROFILL NOT NULL,
  `title` varchar(254) DEFAULT NULL,
  `sysname` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`idconfig`, `title`, `sysname`) VALUES
(0000000001, 'ITV Admin', 'Sistema de Gerenciamento Integrado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `partidos`
--

CREATE TABLE `partidos` (
  `idpartidos` int(10) UNSIGNED ZEROFILL NOT NULL,
  `Nome` varchar(254) DEFAULT NULL,
  `Sigla` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `partidos`
--

INSERT INTO `partidos` (`idpartidos`, `Nome`, `Sigla`) VALUES
(0000000001, 'PARTIDO DO MOVIMENTO DEMOCRÁTICO BRASILEIRO', 'PMDB'),
(0000000002, 'PARTIDO TRABALHISTA BRASILEIRO', 'PTB'),
(0000000003, 'PARTIDO DEMOCRÁTICO TRABALHISTA', 'PDT'),
(0000000004, 'PARTIDO DOS TRABALHADORES', 'PT'),
(0000000005, 'PARTIDO DOS TRABALHADORES', 'DEM'),
(0000000006, 'PARTIDO COMUNISTA DO BRASIL', 'PCdoB'),
(0000000007, 'PARTIDO SOCIALISTA BRASILEIRO', 'PSB'),
(0000000008, 'PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA', 'PSDB'),
(0000000009, 'PARTIDO TRABALHISTA CRISTÃO', 'PTC'),
(0000000010, 'PARTIDO SOCIAL CRISTÃO', 'PSC'),
(0000000011, 'PARTIDO DA MOBILIZAÇÃO NACIONAL', 'PMN'),
(0000000012, 'PARTIDO REPUBLICANO PROGRESSISTA', 'PRP'),
(0000000013, 'PARTIDO POPULAR SOCIALISTA', 'PPS'),
(0000000014, 'PARTIDO VERDE', 'PV'),
(0000000015, 'PARTIDO TRABALHISTA DO BRASIL', 'PTdoB'),
(0000000016, 'PARTIDO PROGRESSISTA', 'PP'),
(0000000017, 'PARTIDO SOCIALISTA DOS TRABALHADORES UNIFICADO', 'PSTU'),
(0000000018, 'PARTIDO COMUNISTA BRASILEIRO', 'PCB'),
(0000000019, 'PARTIDO RENOVADOR TRABALHISTA BRASILEIRO', 'PRTB'),
(0000000020, 'PARTIDO HUMANISTA DA SOLIDARIEDADE', 'PHS'),
(0000000021, 'PARTIDO SOCIAL DEMOCRATA CRISTÃO', 'PSDC'),
(0000000022, 'PARTIDO DA CAUSA OPERÁRIA', 'PCO'),
(0000000023, 'PARTIDO TRABALHISTA NACIONAL', 'PTN'),
(0000000024, 'PARTIDO SOCIAL LIBERAL', 'PSL'),
(0000000025, 'PARTIDO REPUBLICANO BRASILEIRO', 'PRB'),
(0000000026, 'PARTIDO SOCIALISMO E LIBERDADE', 'PSOL'),
(0000000027, 'PARTIDO DA REPÚBLICA', 'PR'),
(0000000028, 'PARTIDO SOCIAL DEMOCRÁTICO', 'PSD'),
(0000000029, 'PARTIDO PÁTRIA LIVRE', 'PPL'),
(0000000030, 'PARTIDO ECOLÓGICO NACIONAL', 'PEN'),
(0000000031, 'PARTIDO REPUBLICANO DA ORDEM SOCIAL', 'PROS'),
(0000000032, 'SOLIDARIEDADE', 'SD'),
(0000000033, 'PARTIDO NOVO', 'NOVO'),
(0000000034, 'REDE SUSTENTABILIDADE', 'REDE'),
(0000000035, 'PARTIDO DA MULHER BRASILEIRA', 'PMB'),
(0000000036, '-- ', '-- NENHUM --');

-- --------------------------------------------------------

--
-- Stand-in structure for view `pessoas2regiao`
-- (See below for the actual view)
--
CREATE TABLE `pessoas2regiao` (
`idcad` int(10) unsigned zerofill
,`nome` varchar(254)
,`apelido` varchar(254)
,`tipo_pessoa` varchar(45)
,`sigla_partido` varchar(45)
,`id_regiao` int(11)
,`tel_fixo` varchar(45)
,`tel_celular` varchar(45)
,`whatsapp` varchar(45)
,`endereco` longtext
,`bairro` varchar(254)
,`cidade` varchar(254)
,`estado` varchar(254)
,`CEP` varchar(45)
,`data_nasc` varchar(45)
,`email` varchar(254)
,`facebook` varchar(254)
,`twitter` varchar(254)
,`instagram` varchar(254)
,`regiaoAtuacao` varchar(254)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao`
--

CREATE TABLE `regiao` (
  `idregiao` int(10) UNSIGNED ZEROFILL NOT NULL,
  `bairro` varchar(254) DEFAULT NULL,
  `peso` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `regiao`
--

INSERT INTO `regiao` (`idregiao`, `bairro`, `peso`) VALUES
(0000000001, 'Água Branca', 1),
(0000000002, 'Alvorada', 1),
(0000000003, 'Arvoredo', 1),
(0000000004, 'Amazonas', 1),
(0000000005, 'Arcádia', 1),
(0000000006, 'Bandeirantes', 1),
(0000000007, 'Beija-flor', 1),
(0000000008, 'Bernardo Monteiro', 1),
(0000000009, 'Bom Jesus', 1),
(0000000010, 'Braúnas', 1),
(0000000011, 'Buganville', 1),
(0000000012, 'Cabral', 1),
(0000000013, 'Caiapós', 1),
(0000000014, 'Camilo Alves', 1),
(0000000015, 'Campina Verde', 1),
(0000000016, 'Campo Alto', 1),
(0000000017, 'Canadá', 1),
(0000000018, 'Cândida Ferreira', 1),
(0000000019, 'Carajás', 1),
(0000000020, 'Chácara', 1),
(0000000021, 'Chácara Boa Vista', 1),
(0000000022, 'Chácaras Cotia', 1),
(0000000023, 'Chácaras Del Rey', 1),
(0000000024, 'Chácaras Novo Horizonte', 1),
(0000000025, 'Chácara São Geraldo', 1),
(0000000026, 'Chácaras Califórnia', 1),
(0000000027, 'Cidade Industrial', 1),
(0000000028, 'Cidade Jardim', 1),
(0000000029, 'Cinco', 1),
(0000000030, 'Cincão', 1),
(0000000031, 'Colonial', 1),
(0000000032, 'Colorado', 1),
(0000000033, 'Condomínio San Remo', 1),
(0000000034, 'Condominio Nosso Rancho', 1),
(0000000035, 'Confisco', 1),
(0000000036, 'Conjunto Costa e Silva', 1),
(0000000037, 'Conjunto Sandoval Azevedo', 1),
(0000000038, 'Coração de Jesus', 1),
(0000000039, 'Darcy Ribeiro', 1),
(0000000040, 'Eldorado', 1),
(0000000041, 'Estância do Hibisco', 1),
(0000000042, 'Estrela d’Alva', 1),
(0000000043, 'Fazenda Bom Jesus', 1),
(0000000044, 'Flamengo', 1),
(0000000045, 'Fonte Grande', 1),
(0000000046, 'Franciscadriângela', 1),
(0000000047, 'Funcionários', 1),
(0000000048, 'Glória', 1),
(0000000049, 'Granjas Lempp', 1),
(0000000050, 'Granja Ouro Branco', 1),
(0000000051, 'Guanabara', 1),
(0000000052, 'Hibisco', 1),
(0000000053, 'Icaivera', 1),
(0000000054, 'Inconfidentes', 1),
(0000000055, 'Industrial', 1),
(0000000056, 'Industrial São Luiz', 1),
(0000000057, 'Jardim Alvorada', 1),
(0000000058, 'Jardim Bandeirantes', 1),
(0000000059, 'Jardim Emaús', 1),
(0000000060, 'Jardim Industrial', 1),
(0000000061, 'Jardim Laguna', 1),
(0000000062, 'Jardim Riacho das Pedras', 1),
(0000000063, 'Jardim Vera Cruz', 1),
(0000000064, 'JK', 1),
(0000000065, 'Liberdade II', 1),
(0000000066, 'Linda Vista', 1),
(0000000067, 'Los Angeles', 1),
(0000000068, 'Lua Nova da Pampulha', 1),
(0000000069, 'Mandu', 1),
(0000000070, 'Maria da Conceição', 1),
(0000000071, 'Monte Castelo', 1),
(0000000072, 'Morada Nova', 1),
(0000000073, 'Morro Redondo', 1),
(0000000074, 'Nacional', 1),
(0000000075, 'Nossa Senhora da Conceição', 1),
(0000000076, 'Nossa Senhora do Carmo', 1),
(0000000077, 'Nova Contagem', 1),
(0000000078, 'Novo Eldorado', 1),
(0000000079, 'Novo Progresso', 1),
(0000000080, 'Novo Riacho', 1),
(0000000081, 'Oitis', 1),
(0000000082, 'Olinda', 1),
(0000000083, 'Parque Maracanã', 1),
(0000000084, 'Parque Recreio', 1),
(0000000085, 'Parque Riacho das Pedras', 1),
(0000000086, 'Parque São João', 1),
(0000000087, 'Pedra Azul', 1),
(0000000088, 'Petrolândia', 1),
(0000000089, 'Praia', 1),
(0000000090, 'Presidente Kennedy', 1),
(0000000091, 'Quintas Coloniais', 1),
(0000000092, 'Quintas do Jacuba', 1),
(0000000093, 'Retiro', 1),
(0000000094, 'Riacho das Pedras', 1),
(0000000095, 'Santa Cruz', 1),
(0000000096, 'Santa Helena', 1),
(0000000097, 'Santa Luzia', 1),
(0000000098, 'Santa Maria', 1),
(0000000099, 'Santa Terezinha', 1),
(0000000100, 'Santana', 1),
(0000000101, 'Santo Antônio', 1),
(0000000102, 'São Bernardo', 1),
(0000000103, 'São Caetano', 1),
(0000000104, 'São Gonçalo', 1),
(0000000105, 'São Joaquim', 1),
(0000000106, 'São Mateus', 1),
(0000000107, 'São Sebastião', 1),
(0000000108, 'Sapucaias', 1),
(0000000109, 'Sede', 1),
(0000000110, 'Solar do Madeira', 1),
(0000000111, 'Tijuca', 1),
(0000000112, 'Três Barras', 1),
(0000000113, 'Três Marias', 1),
(0000000114, 'Tropical', 1),
(0000000115, 'Tupã', 1),
(0000000116, 'Vale das Amendoeiras', 1),
(0000000117, 'Vila Angelina', 1),
(0000000118, 'Vila Barraginha', 1),
(0000000119, 'Vila Belém', 1),
(0000000120, 'Vila Beneves', 1),
(0000000121, 'Vila Esperança', 1),
(0000000122, 'Vila Estaleiro', 1),
(0000000123, 'Vila Francisco Mariano', 1),
(0000000124, 'Vila Helena', 1),
(0000000125, 'Vila Itália', 1),
(0000000126, 'Vila Itaú', 1),
(0000000127, 'Vila Líder', 1),
(0000000128, 'Vila Madalena', 1),
(0000000129, 'Vila Maria Cristina', 1),
(0000000130, 'Vila Panamá', 1),
(0000000131, 'Vila Paris (Contagem) Vila Paris', 1),
(0000000132, 'Vila Renascer', 1),
(0000000133, 'Vila Pérola', 1),
(0000000134, 'Xangri-lá', 1),
(0000000135, 'Ypê Amarelo', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `relAtuacao`
--

CREATE TABLE `relAtuacao` (
  `id_cadastros` int(11) DEFAULT NULL,
  `id_atuacao` int(11) DEFAULT NULL,
  `relAtuacaocol` int(10) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `relAtuacao`
--

INSERT INTO `relAtuacao` (`id_cadastros`, `id_atuacao`, `relAtuacaocol`) VALUES
(85, 1, 0000000001),
(85, 2, 0000000002),
(85, 3, 0000000003),
(85, 4, 0000000004),
(85, 5, 0000000005),
(85, 6, 0000000006),
(85, 7, 0000000007),
(85, 8, 0000000008),
(85, 9, 0000000009),
(86, 1, 0000000010),
(86, 2, 0000000011),
(86, 3, 0000000012),
(86, 4, 0000000013),
(86, 5, 0000000014),
(86, 6, 0000000015),
(86, 7, 0000000016),
(86, 8, 0000000017),
(86, 9, 0000000018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `relRegiao`
--

CREATE TABLE `relRegiao` (
  `id_cadastros` int(11) DEFAULT NULL,
  `id_regiao` int(11) DEFAULT NULL,
  `id` int(10) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `relRegiao`
--

INSERT INTO `relRegiao` (`id_cadastros`, `id_regiao`, `id`) VALUES
(85, 8, 0000000097);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `idtipos` int(10) UNSIGNED ZEROFILL NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipos`
--

INSERT INTO `tipos` (`idtipos`, `tipo`) VALUES
(0000000001, 'PRÉ-CANDIDATO'),
(0000000002, 'LIDERANÇA'),
(0000000003, 'OUTROS');

-- --------------------------------------------------------

--
-- Structure for view `base_rel`
--
DROP TABLE IF EXISTS `base_rel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `base_rel`  AS  select `cadastros`.`idcadastros` AS `idcad`,`cadastros`.`nome` AS `nome`,`cadastros`.`apelido` AS `apelido`,`tipos`.`tipo` AS `tipo_pessoa`,`partidos`.`Sigla` AS `sigla_partido`,`relregiao`.`id_regiao` AS `id_regiao`,`cadastros`.`tel_fixo` AS `tel_fixo`,`cadastros`.`tel_celular` AS `tel_celular`,`cadastros`.`whatsapp` AS `whatsapp`,`cadastros`.`endereco` AS `endereco`,`cadastros`.`bairro` AS `bairro`,`cadastros`.`cidade` AS `cidade`,`cadastros`.`estado` AS `estado`,`cadastros`.`CEP` AS `CEP`,`cadastros`.`data_nasc` AS `data_nasc`,`cadastros`.`email` AS `email`,`cadastros`.`facebook` AS `facebook`,`cadastros`.`twitter` AS `twitter`,`cadastros`.`instagram` AS `instagram` from (((`cadastros` join `partidos` on((`cadastros`.`partido` = `partidos`.`idpartidos`))) join `tipos` on((`cadastros`.`tipo` = `tipos`.`idtipos`))) join `relregiao` on((`cadastros`.`idcadastros` = `relregiao`.`id_cadastros`))) where (`cadastros`.`idcadastros` = `relregiao`.`id_cadastros`) ;

-- --------------------------------------------------------

--
-- Structure for view `cadview`
--
DROP TABLE IF EXISTS `cadview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cadview`  AS  select `cad`.`idcadastros` AS `idcadastros`,`cad`.`nome` AS `nome`,`cad`.`apelido` AS `apelido`,`tipos`.`tipo` AS `tipo`,`partidos`.`Sigla` AS `sigla_partido`,`cad`.`tel_fixo` AS `tel_fixo`,`cad`.`tel_celular` AS `tel_celular`,`cad`.`whatsapp` AS `whatsapp`,`cad`.`endereco` AS `endereco`,`cad`.`bairro` AS `bairro`,`cad`.`cidade` AS `cidade`,`cad`.`estado` AS `estado`,`cad`.`CEP` AS `CEP`,`cad`.`data_nasc` AS `data_nasc`,`cad`.`email` AS `email`,`cad`.`facebook` AS `facebook`,`cad`.`twitter` AS `twitter`,`cad`.`instagram` AS `instagram` from ((`cadastros` `cad` join `partidos` on((`cad`.`partido` = `partidos`.`idpartidos`))) join `tipos` on((`cad`.`tipo` = `tipos`.`idtipos`))) ;

-- --------------------------------------------------------

--
-- Structure for view `pessoas2regiao`
--
DROP TABLE IF EXISTS `pessoas2regiao`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pessoas2regiao`  AS  select `base_rel`.`idcad` AS `idcad`,`base_rel`.`nome` AS `nome`,`base_rel`.`apelido` AS `apelido`,`base_rel`.`tipo_pessoa` AS `tipo_pessoa`,`base_rel`.`sigla_partido` AS `sigla_partido`,`base_rel`.`id_regiao` AS `id_regiao`,`base_rel`.`tel_fixo` AS `tel_fixo`,`base_rel`.`tel_celular` AS `tel_celular`,`base_rel`.`whatsapp` AS `whatsapp`,`base_rel`.`endereco` AS `endereco`,`base_rel`.`bairro` AS `bairro`,`base_rel`.`cidade` AS `cidade`,`base_rel`.`estado` AS `estado`,`base_rel`.`CEP` AS `CEP`,`base_rel`.`data_nasc` AS `data_nasc`,`base_rel`.`email` AS `email`,`base_rel`.`facebook` AS `facebook`,`base_rel`.`twitter` AS `twitter`,`base_rel`.`instagram` AS `instagram`,`regiao`.`bairro` AS `regiaoAtuacao` from (`base_rel` join `regiao` on((`base_rel`.`id_regiao` = `regiao`.`idregiao`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atuacao`
--
ALTER TABLE `atuacao`
  ADD PRIMARY KEY (`idatuacao`);

--
-- Indexes for table `cadastros`
--
ALTER TABLE `cadastros`
  ADD PRIMARY KEY (`idcadastros`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`idconfig`);

--
-- Indexes for table `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`idpartidos`);

--
-- Indexes for table `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`idregiao`);

--
-- Indexes for table `relAtuacao`
--
ALTER TABLE `relAtuacao`
  ADD PRIMARY KEY (`relAtuacaocol`);

--
-- Indexes for table `relRegiao`
--
ALTER TABLE `relRegiao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`idtipos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atuacao`
--
ALTER TABLE `atuacao`
  MODIFY `idatuacao` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cadastros`
--
ALTER TABLE `cadastros`
  MODIFY `idcadastros` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `idconfig` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `partidos`
--
ALTER TABLE `partidos`
  MODIFY `idpartidos` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `regiao`
--
ALTER TABLE `regiao`
  MODIFY `idregiao` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `relAtuacao`
--
ALTER TABLE `relAtuacao`
  MODIFY `relAtuacaocol` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `relRegiao`
--
ALTER TABLE `relRegiao`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `tipos`
--
ALTER TABLE `tipos`
  MODIFY `idtipos` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
