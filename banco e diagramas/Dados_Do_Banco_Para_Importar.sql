-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Nov-2018 às 04:20
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bancoisport`
--

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `email`, `senha`) VALUES
(6, 'Marco', 'marco@lul.br', NULL),
(7, 'Jose das Coves', 'josecove@lul', NULL),
(8, 'Victor', 'viictor.wagner@lul.br', '123123'),
(9, 'Luis', 'luis.zano@lul.br', '321321'),
(10, 'Iza', 'iza.ribe@lul.br', '123412'),
(11, 'Wagner', 'wagner@lul.com.br', NULL);

--
-- Extraindo dados da tabela `cartao`
--

INSERT INTO `cartao` (`id`, `bandeira`, `validade`, `numero`, `codigo_seguranca`, `cliente_id`) VALUES
(1, 'Bradesco', '18/08/2004', 2, 123, 124);

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `sobrenome`, `data_nascimento`, `email`, `cpf`) VALUES
(124, 'Iza', 'Ribeiro', '22/02/99', 'iz4rib@wow.com', '55555'),
(125, 'Victor', 'Wagner', '55/02/89', 'viictor@wow.com', '888556648'),
(126, 'Luis', 'Zano', '5/02/98', 'luis@wow.com', '652195325484'),
(127, 'ZE das COVES', 'Bezerra', 'dez/08/umnovequatro', 'zeuai@wow.com', 'meiaduzia');

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `numero`, `cliente_id`) VALUES
(1, 988409622, 125),
(2, 955554444, 126);

--
-- Extraindo dados da tabela `espaco`
--

INSERT INTO `espaco` (`id`, `nome`, `cnpj`, `cep`, `logradouro`, `numero`, `complemento`, `bairro`, `cidade`, `uf`, `area`, `quantidade_pessoas`, `hora_funcionamento_inicio`, `hora_funcionamento_final`, `tipo_espaco_id`) VALUES
(1, 'SportAEEEE', '2234567890', '36045000', 'Logradouro', '1', 'compl', 'Bairro', 'Cidade', 'UF', '80.5', '900', '06:00:', '23:00:', 1),
(2, 'SportWAT', '2234567890', '36045000', 'Logradouro', '1', 'compl', 'Bairro', 'Cidade', 'UF', '80.5', '900', '06:00:', '23:00:', 2),
(6, 'SportMania', '2234567890', '36045000', 'Logradouro', '1', 'compl', 'Bairro', 'Cidade', 'UF', '80.5', '900', '06:00:', '23:00:', 1274),
(7, 'SportMania', '2234567890', '36045000', 'Logradouro', '1', 'compl', 'Bairro', 'Cidade', 'UF', '80.5', '900', '06:00:', '23:00:', 1274),
(124, 'SportMania', '2234567890', '36045000', 'Logradouro', '1', 'compl', 'Bairro', 'Cidade', 'UF', '80.5', '900', '06:00:', '23:00:', 1274);

--
-- Extraindo dados da tabela `irregularidade`
--

INSERT INTO `irregularidade` (`id`, `autor`, `descricao`, `espaco_id`) VALUES
(123, 'luiis', 'é uma descrição', 6),
(1234, 'luiis', 'é uma descrição', 6);

--
-- Extraindo dados da tabela `modalidade_predominante`
--

INSERT INTO `modalidade_predominante` (`id`, `modalidade_predominante`, `descricao`) VALUES
(1, 'Futebol', 'Areia'),
(2, 'Basquet', 'Quadra'),
(124, 'Volei', 'Areia');

--
-- Extraindo dados da tabela `pagamento`
--

INSERT INTO `pagamento` (`id`, `vencimento`, `numero_codigo_barras`, `valor_total`, `reserva_id`) VALUES
(1, '0000-00-00', '8888', 150, 55),
(2, '0000-00-00', '5555', 250, 11),
(3, '0000-00-00', '5555', 150, 33);

--
-- Extraindo dados da tabela `reembolso`
--

INSERT INTO `reembolso` (`id`, `estado`, `pagamento_id`) VALUES
(1, 'Em Analise', 1),
(2, 'Aprovado', 2),
(3, 'Recusado', 3);

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`id`, `data_reserva`, `hora_inicio`, `hora_fim`, `quantidade_pessoas`, `valor_espaco`, `nota_avaliacao`, `espaco_id`, `cliente_id`) VALUES
(11, '25/01/1995', '08:00:00.000000', '22:00:00.000000', '150', 250, '4', 2, 126),
(33, '25/01/1995', '08:00:00.000000', '22:00:00.000000', '55', 150, '5', 1, 125),
(55, '25/01/1995', '08:00:00.000000', '22:00:00.000000', '95', 150, '5', 124, 124);


--
-- Extraindo dados da tabela `tipo_espaco`
--

INSERT INTO `tipo_espaco` (`id`, `nome`, `modalidade_predominante_id`) VALUES
(1, 'SportAEEEEEEEEEE', 1),
(2, 'SportWAT', 2),
(1274, 'SportClub', 124);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
