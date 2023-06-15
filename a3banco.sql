-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2023 às 17:41
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `a3banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_imc`
--

CREATE TABLE `tabela_imc` (
  `id_user` int(11) NOT NULL,
  `data_hora_inclusao` datetime NOT NULL,
  `imc` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tabela_imc`
--

INSERT INTO `tabela_imc` (`id_user`, `data_hora_inclusao`, `imc`) VALUES
(1, '2023-06-07 11:44:44', 25.7),
(1, '2023-06-07 11:45:45', 30.7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL,
  `nome_user` varchar(20) NOT NULL,
  `email_user` varchar(60) NOT NULL,
  `senha_user` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_user`, `nome_user`, `email_user`, `senha_user`) VALUES
(1, 'Matheus', 'matheus@gmail.com', '12345678'),
(2, 'Aysha', 'aysha@gmail.com', '12345678'),
(3, 'Marcelo', 'Marcelo@gmail.com', '12345678'),
(4, 'admin', 'admin@gmail.com', '12345678'),
(5, 'teste', 'teste@gmail.com', '12345678');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tabela_imc`
--
ALTER TABLE `tabela_imc`
  ADD PRIMARY KEY (`id_user`,`data_hora_inclusao`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tabela_imc`
--
ALTER TABLE `tabela_imc`
  ADD CONSTRAINT `tabela_imc_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
