-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2016 at 01:26 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sgi`
--

-- --------------------------------------------------------

--
-- Table structure for table `atuacao`
--

CREATE TABLE IF NOT EXISTS `atuacao` (
`idatuacao` int(10) unsigned zerofill NOT NULL,
  `atuacao` varchar(254) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atuacao`
--

INSERT INTO `atuacao` (`idatuacao`, `atuacao`) VALUES
(0000000001, 'SAÚDE'),
(0000000002, 'TRANSPORTE'),
(0000000003, 'EDUCAÇÃO'),
(0000000004, 'SEGURANÇA'),
(0000000005, 'CULTURA'),
(0000000006, 'LAZER'),
(0000000007, 'OUTROS');

-- --------------------------------------------------------

--
-- Table structure for table `cadastros`
--

CREATE TABLE IF NOT EXISTS `cadastros` (
`idcadastros` int(10) unsigned zerofill NOT NULL,
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
  `data_nasc` datetime DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `facebook` varchar(254) DEFAULT NULL,
  `twitter` varchar(254) DEFAULT NULL,
  `instagram` varchar(254) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cadastros`
--

INSERT INTO `cadastros` (`idcadastros`, `nome`, `apelido`, `tipo`, `partido`, `tel_fixo`, `tel_celular`, `whatsapp`, `endereco`, `bairro`, `cidade`, `estado`, `CEP`, `data_nasc`, `email`, `facebook`, `twitter`, `instagram`) VALUES
(0000000001, 'Paulo Eduardo Martins Moreira', 'Paulo Moreira', 2, 8, '3133980287', '31995956140', '31995956140', 'Av. Prefeito Gil Diniz, 118', 'Fonte Grande', 'Contagem', 'MG', '32015470', '1976-09-22 00:00:00', 'neophitus@gmail.com', 'neophitus', '@paulommoreira', '@neophitus'),
(0000000002, 'Victor Hugo', 'Victor Hugo', 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(0000000003, 'Jennifer Moreira', 'Nenna Moreira', 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cadview`
--
CREATE TABLE IF NOT EXISTS `cadview` (
`nome` varchar(254)
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
,`data_nasc` datetime
,`email` varchar(254)
,`facebook` varchar(254)
,`twitter` varchar(254)
,`instagram` varchar(254)
);
-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
`idconfig` int(10) unsigned zerofill NOT NULL,
  `title` varchar(254) DEFAULT NULL,
  `sysname` varchar(254) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`idconfig`, `title`, `sysname`) VALUES
(0000000001, 'ITV Admin', 'Sistema de Gerenciamento Integrado');

-- --------------------------------------------------------

--
-- Table structure for table `partidos`
--

CREATE TABLE IF NOT EXISTS `partidos` (
`idpartidos` int(10) unsigned zerofill NOT NULL,
  `Nome` varchar(254) DEFAULT NULL,
  `Sigla` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partidos`
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
-- Table structure for table `regiao`
--

CREATE TABLE IF NOT EXISTS `regiao` (
`idregiao` int(10) unsigned zerofill NOT NULL,
  `bairro` varchar(254) DEFAULT NULL,
  `peso` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regiao`
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
-- Table structure for table `relAtuacao`
--

CREATE TABLE IF NOT EXISTS `relAtuacao` (
  `id_cadastros` int(11) DEFAULT NULL,
  `id_atuacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relAtuacao`
--

INSERT INTO `relAtuacao` (`id_cadastros`, `id_atuacao`) VALUES
(1, 2),
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `relRegiao`
--

CREATE TABLE IF NOT EXISTS `relRegiao` (
  `id_cadastros` int(11) DEFAULT NULL,
  `id_regiao` int(11) DEFAULT NULL,
`id` int(10) unsigned zerofill NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relRegiao`
--

INSERT INTO `relRegiao` (`id_cadastros`, `id_regiao`, `id`) VALUES
(1, 45, 0000000001),
(1, 96, 0000000002),
(2, 14, 0000000003),
(2, 1, 0000000004),
(2, 2, 0000000005),
(3, 53, 0000000006),
(3, 45, 0000000007),
(3, 40, 0000000008);

-- --------------------------------------------------------

--
-- Table structure for table `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
`idtipos` int(10) unsigned zerofill NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipos`
--

INSERT INTO `tipos` (`idtipos`, `tipo`) VALUES
(0000000001, 'PRÉ-CANDIDATO'),
(0000000002, 'LIDERANÇA');

-- --------------------------------------------------------

--
-- Structure for view `cadview`
--
DROP TABLE IF EXISTS `cadview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cadview` AS select `cad`.`nome` AS `nome`,`cad`.`apelido` AS `apelido`,`tipos`.`tipo` AS `tipo`,`partidos`.`Sigla` AS `sigla_partido`,`cad`.`tel_fixo` AS `tel_fixo`,`cad`.`tel_celular` AS `tel_celular`,`cad`.`whatsapp` AS `whatsapp`,`cad`.`endereco` AS `endereco`,`cad`.`bairro` AS `bairro`,`cad`.`cidade` AS `cidade`,`cad`.`estado` AS `estado`,`cad`.`CEP` AS `CEP`,`cad`.`data_nasc` AS `data_nasc`,`cad`.`email` AS `email`,`cad`.`facebook` AS `facebook`,`cad`.`twitter` AS `twitter`,`cad`.`instagram` AS `instagram` from ((`cadastros` `cad` join `partidos` on((`cad`.`partido` = `partidos`.`idpartidos`))) join `tipos` on((`cad`.`tipo` = `tipos`.`idtipos`)));

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
MODIFY `idatuacao` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cadastros`
--
ALTER TABLE `cadastros`
MODIFY `idcadastros` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
MODIFY `idconfig` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `partidos`
--
ALTER TABLE `partidos`
MODIFY `idpartidos` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `regiao`
--
ALTER TABLE `regiao`
MODIFY `idregiao` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `relRegiao`
--
ALTER TABLE `relRegiao`
MODIFY `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tipos`
--
ALTER TABLE `tipos`
MODIFY `idtipos` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
