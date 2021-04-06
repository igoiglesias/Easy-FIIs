-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2021 at 08:19 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiis`
--
CREATE DATABASE IF NOT EXISTS `fiis` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fiis`;

-- --------------------------------------------------------

--
-- Table structure for table `fiis`
--

CREATE TABLE `fiis` (
  `id` int NOT NULL,
  `cod` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ultimo_dividendo` double DEFAULT NULL,
  `dividendo_yield` double DEFAULT NULL,
  `patrimonio_liquid` double DEFAULT NULL,
  `valor_patrimonial` double DEFAULT NULL,
  `retabilidade_mes` double DEFAULT NULL,
  `p_vp` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `liquidez_diaria` double DEFAULT NULL,
  `appreciation` double DEFAULT NULL,
  `segment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `duration` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cumulate_twelve` double DEFAULT NULL,
  `yeld_avarege_twelve` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fiis`
--

INSERT INTO `fiis` (`id`, `cod`, `name`, `ultimo_dividendo`, `dividendo_yield`, `patrimonio_liquid`, `valor_patrimonial`, `retabilidade_mes`, `p_vp`, `price`, `liquidez_diaria`, `appreciation`, `segment`, `duration`, `cumulate_twelve`, `yeld_avarege_twelve`, `created_at`) VALUES
(1, 'ABCP11', 'FDO INV IMOB GRAND PLAZA SHOPPING', 0.11, 0.06, 1.1, 88.12, 1.88, 0.9, 79, 2358, 0.77, 'Shoppings', 'Indeterminado', 3.62, 0.3, '2021-04-05 00:52:49'),
(2, 'AFCR11', 'AF INVEST FDO INV. IMOB. - RECEBÍVEIS IMOB.', 1.07, 0.91, 120, 102.65, 3.6, 1.11, 113.52, 5230, -2.93, 'Híbrido', 'Indeterminado', 9.42, 0.79, '2021-04-05 00:52:49'),
(3, 'AFOF11', 'ALIANZA FOFII FDO. INVEST. IMOB.', 8.76, 0, 39, 106.53, 0, 1.1, 117.15, 32, 1.43, 'Títulos e Val. Mob.', 'Indeterminado', 86.14, 7.18, '2021-04-05 00:52:49'),
(4, 'AIEC11', 'AUTONOMY EDIFÍCIOS CORPORATIVOS FUND. INV. IMOB.', 0.57, 0.63, 480, 100.13, -2.61, 0.88, 88, 1374, -2.22, 'Lajes Corporativas', 'Indeterminado', 7.68, 0.64, '2021-04-05 00:52:49'),
(5, 'ALMI11', 'FDO INV IMOB - FII TORRE ALMIRANTE', 0, 0, 220, 1990.69, 2.27, 0.55, 0, 28, 0.55, 'Lajes Corporativas', 'Indeterminado', 0, 0, '2021-04-05 00:52:49'),
(6, 'ALZR11', 'ALIANZA TRUST RENDA IMOBILIARIA FDO INV IMOB', 0.59, 0.48, 460, 102.44, -4.51, 1.27, 129.87, 9831, 1, 'Logística', 'Indeterminado', 4.74, 0.4, '2021-04-05 00:52:49'),
(7, 'AQLL11', 'ÁQUILLA FDO INV IMOB - FII', 0, 0, 150, 1505.87, 0, 0.33, 500, 1, 0, 'Títulos e Val. Mob.', 'Indeterminado', 0, 0, '2021-04-05 00:52:49'),
(8, 'ARCT11', 'RIZA ARCTIUM REAL ESTATE FUNDO DE INVESTIMENTO IMOBILIÁRIO', 5.37, 3.86, 45, 103.14, 3.86, 1.06, 109, 2846, -0.73, 'Híbrido', 'Indeterminado', 18.88, 1.57, '2021-04-05 00:52:49'),
(9, 'ARFI11B', 'ÁQUILLA RENDA FDO INV IMOB - FII', 0, 0, 140, 1213.98, 0, 0.91, 0, 153, 0, 'Títulos e Val. Mob.', 'Indeterminado', 0, 0, '2021-04-05 00:52:49'),
(10, 'ARRI11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO ÁTRIO REIT RECEBÍVEIS IMOBILIÁRIOS', 1.15, 1.15, 37, 95.29, -0.04, 1.05, 99.68, 1804, -0.12, 'Títulos e Val. Mob.', 'Indeterminado', 8.63, 0.72, '2021-04-05 00:52:49'),
(11, 'ATSA11', 'HEDGE ATRIUM SHOPPING SANTO ANDRE FDO INV IMOB', 0.25, 0.18, 170, 98.89, 0.92, 1.13, 111.5, 77, -0.45, 'Shoppings', 'Indeterminado', 3.11, 0.26, '2021-04-05 00:52:49'),
(12, 'BARI11', 'FDO INV IMOB BARIGUI RENDIMENTOS IMOB I FII', 1.1, 0.97, 400, 101.52, 0.35, 1.07, 108.9, 121418, -4.05, 'Títulos e Val. Mob.', 'Indeterminado', 12.29, 1.02, '2021-04-05 00:52:49'),
(13, 'BBFI11B', 'BB FDO INV IMOB PROGRESSIVO', 30, 1.25, 330, 2531.02, 9.39, 0.91, 0, 228, -3.26, 'Lajes Corporativas', 'Indeterminado', 12.98, 1.08, '2021-04-05 00:52:50'),
(14, 'BBPO11', 'BB PROGRESSIVO II FDO INV IMOB - FII', 1.08, 0.93, 1.6, 100.71, 3.34, 1.14, 114.98, 22900, -0.96, 'Lajes Corporativas', 'Indeterminado', 11.21, 0.93, '2021-04-05 00:52:50'),
(15, 'BBRC11', 'BB RENDA CORPORATIVA FDO INV IMOB - FII', 0.94, 0.79, 180, 112.58, -0.73, 1.04, 117.24, 597, -1.42, 'Outros', 'Indeterminado', 9.91, 0.83, '2021-04-05 00:52:50'),
(16, 'BBVJ11', 'FDO INV IMOB BB VOTORANTIM JHSF C JARD CONT TOWER', 0, 0.61, 150, 57.18, 19.96, 1.1, 62.99, 763, 0.43, 'Lajes Corporativas', 'Indeterminado', 0.78, 0.07, '2021-04-05 00:52:50'),
(17, 'BCFF11', 'FDO INV IMOB - FII BTG PACTUAL FUNDO DE FUNDOS', 0.56, 0.62, 1.7, 84.62, -1.72, 1.02, 86.3, 147945, -0.17, 'Títulos e Val. Mob.', 'Indeterminado', 6.52, 0.54, '2021-04-05 00:52:50'),
(18, 'BCIA11', 'BRADESCO CARTEIRA IMOBILIÁRIA ATIVA - FII', 0.64, 0.61, 430, 115.48, -0.53, 0.9, 103.8, 2498, -1.24, 'Títulos e Val. Mob.', 'Indeterminado', 7.89, 0.66, '2021-04-05 00:52:50'),
(19, 'BCRI11', 'BANESTES RECEBÍVEIS IMOBILIÁRIOS FDO INV IMOB  FII', 1.15, 1.01, 470, 107.4, 1.51, 1.05, 112.89, 13903, -1.19, 'Títulos e Val. Mob.', 'Indeterminado', 9.65, 0.8, '2021-04-05 00:52:50'),
(20, 'BICR11', 'INTER TÍTULOS IMOB. FDO INV. IMOB.', 0.28, 0.29, 50, 99.8, -2.21, 0.92, 92.29, 14, -5.63, 'Títulos e Val. Mob.', 'Indeterminado', 3.16, 0.26, '2021-04-05 00:52:50'),
(21, 'BLCP11', 'BLUECAP RENDA LOGÍSTICA FUNDO DE INVESTIMENTO IMOBILIÁRIO -FII', 0.67, 0.65, 110, 103.14, -1.59, 1, 103.13, 1, 0.13, 'Outros', 'Indeterminado', 7.82, 0.65, '2021-04-05 00:52:50'),
(22, 'BLMR11', 'BLUEMACAW RENDA + FOF FDO. INVEST. IMOB.', 0.45, 0.5, 250, 97.06, 0, 0.95, 92.4, 9023, 2.03, 'N/A', 'N/A', 5.84, 0.49, '2021-04-05 00:52:50'),
(23, 'BMLC11', 'FDO INV IMOB BM BRASCAN LAJES CORPORATIVAS - FII', 0.5, 0.53, 110, 106.83, -0.2, 0.87, 92.9, 234, -0.67, 'Lajes Corporativas', 'Indeterminado', 7.47, 0.62, '2021-04-05 00:52:50'),
(24, 'BMLC11B', 'FDO INV IMOB BM BRASCAN LAJES CORPORATIVAS - FII', 0.58, 0.61, 94, 93.97, 0.79, 1.02, 95.72, 136, -0.91, 'Lajes Corporativas', 'Indeterminado', 6.86, 0.57, '2021-04-05 00:52:50'),
(25, 'BNFS11', 'BANRISUL NOVAS FRONTEIRAS FDO INV IMOB - FII', 1, 0.81, 73, 103.77, 0.89, 1.19, 123, 391, -0.81, 'Outros', 'Indeterminado', 9.53, 0.79, '2021-04-05 00:52:50'),
(26, 'BPFF11', 'FDO INV IMOB BRASIL PLURAL ABSOLUTO FDO DE FUNDOS', 0.57, 0.74, 390, 86.57, -1.82, 0.89, 76.87, 14611, -0.16, 'Títulos e Val. Mob.', 'Indeterminado', 8.42, 0.7, '2021-04-05 00:52:50'),
(27, 'BPML11', 'FDO INV IMOB BTG PACTUAL SHOPPINGS', 0.61, 0.31, 590, 137.96, 0.31, 0.64, 87.8, 514, -1.17, 'Shoppings', 'Indeterminado', 5.7, 0.48, '2021-04-05 00:52:50'),
(28, 'BRCO11', 'BRESCO LOGÍSTICA - FDO INV IMOB', 0.54, 0.48, 1.6, 108.44, -0.23, 1.03, 111.2, 19379, -0.27, 'Logística', 'Indeterminado', 5.95, 0.5, '2021-04-05 00:52:50'),
(29, 'BRCR11', 'FDO INV IMOB - FII BTG PACTUAL CORP. OFFICE FUND', 0.48, 0.56, 2.9, 107.5, 0.56, 0.76, 81.9, 28203, -0.12, 'Híbrido', 'Indeterminado', 6.83, 0.57, '2021-04-05 00:52:50'),
(30, 'BREV11', 'BRAZIL REAL ESTATE VICTORY FUND I - FDO. INV. IMOB', 0.24, 0.37, 99, 105.82, -4.79, 1.02, 108.05, 2, -1.32, 'Híbrido', 'Indeterminado', 4.24, 0.35, '2021-04-05 00:52:50'),
(31, 'BTCR11', 'FDO INV IMOB BTG PACTUAL CREDITO IMOBILIARIO', 0.6, 0.67, 460, 96.42, 1.42, 0.97, 93.45, 9595, 1.14, 'Títulos e Val. Mob.', 'Indeterminado', 5.84, 0.49, '2021-04-05 00:52:50'),
(32, 'BTLG11', 'BTG PACTUAL LOGISTICA FDO INV IMOB - FII', 0.6, 0.53, 1.3, 101.15, -3.11, 1.13, 114.31, 50047, -0.35, 'Logística', 'Indeterminado', 5.63, 0.47, '2021-04-05 00:52:50'),
(33, 'BZLI11', 'BRAZIL REALTY FDO INV IMOB', 0, 0, 430, 11.54, 0.68, 1.27, 14.7, 44041, -1.67, 'Títulos e Val. Mob.', 'Indeterminado', 0, 0, '2021-04-05 00:52:50'),
(34, 'CARE11', 'BRAZILIAN GRAVEYARD DEATH CARE FDO INV IMOB - FII', 0.01, 0.24, 280, 1.56, -5.59, 0.36, 0.56, 132019, 3.7, 'Híbrido', 'Indeterminado', 2.2, 0.18, '2021-04-05 00:52:50'),
(35, 'CBOP11', 'CASTELLO BRANCO OFFICE PARK FDO INV IMOB - FII', 0.49, 0.63, 130, 90.73, 4.19, 0.85, 76.93, 1329, -0.65, 'Lajes Corporativas', 'Indeterminado', 7.75, 0.65, '2021-04-05 00:52:50'),
(36, 'CEOC11', 'FDO INV IMOB - FII CEO CYRELA COMMERC. PROPERTIES', 0.46, 0.65, 160, 86.74, -1.32, 0.82, 71.16, 535, -1.03, 'Lajes Corporativas', 'Indeterminado', 8.2, 0.68, '2021-04-05 00:52:50'),
(37, 'CJCT11', 'CIDADE JARDIM CONTINENTAL TOWER FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0, 0.61, 180, 67.62, 19.96, 0.92, 62, 1041, 0.98, 'Lajes Corporativas', 'Indeterminado', 0.8, 0.07, '2021-04-05 00:52:50'),
(38, 'CNES11', 'FDO INV IMOB - FII CENESP', 0.1, 0.22, 270, 91.84, -13.03, 0.48, 43.64, 213, -0.57, 'Lajes Corporativas', 'Indeterminado', 6.72, 0.56, '2021-04-05 00:52:50'),
(39, 'CPFF11', 'CAPITÂNIA REIT FOF - FDO. INVEST. IMOB', 0.8, 0.96, 340, 85.64, -1.33, 0.96, 82.48, 7985, 0.87, 'Híbrido', 'Indeterminado', 6.92, 0.58, '2021-04-05 00:52:50'),
(40, 'CPTS11', 'CAPITANIA SECURITIES II FDO INV IMOB - FII', 1.05, 1.05, 1.3, 95.27, -1.92, 1.07, 102.2, 59388, 0.69, 'Títulos e Val. Mob.', 'Indeterminado', 9.65, 0.8, '2021-04-05 00:52:50'),
(41, 'CRFF11', 'CAIXA RIO BRAVO FDO DE FDOS INV IMOB II', 0.5, 0.63, 65, 94.14, -1.37, 0.86, 81, 75, 1.39, 'Títulos e Val. Mob.', 'Indeterminado', 6.37, 0.53, '2021-04-05 00:52:50'),
(42, 'CTXT11', 'FDO INV IMOB CENTRO TEXTIL INTERNACIONAL', 0.05, 0.17, 130, 48.36, -10.22, 0.61, 29.45, 175, 0.51, 'Lajes Corporativas', 'Indeterminado', 11.41, 0.95, '2021-04-05 00:52:50'),
(43, 'CVBI11', 'FDO INV. IMOB. VBI CRI', 1.24, 1.13, 350, 100.16, 2.16, 1.07, 106.95, 40767, 0.9, 'Títulos e Val. Mob.', 'Indeterminado', 10.5, 0.88, '2021-04-05 00:52:50'),
(44, 'CXCE11B', 'FUNDO DE INVESTIMENTO IMOBILIARIO CAIXA CEDAE', 0.92, 1.12, 140, 81.1, -4.58, 1.01, 81.99, 1017, -0.1, 'Outros', 'Indeterminado', 12.71, 1.06, '2021-04-05 00:52:50'),
(45, 'CXRI11', 'CAIXA RIO BRAVO FUNDO DE FDO INV IMOB - FII', 0.6, 0.6, 150, 95.99, -0.9, 1.06, 101.47, 362, 1.99, 'Híbrido', 'Indeterminado', 9.92, 0.83, '2021-04-05 00:52:50'),
(46, 'CXTL11', 'FDO INV IMOB CAIXA TRX LOGÍSTICA RENDA', 2.73, 0.15, 39, 729.59, 0.15, 0.4, 295, 37, -17.13, 'Logística', 'Indeterminado', 3.35, 0.28, '2021-04-05 00:52:50'),
(47, 'DEVA11', 'DEVANT RECEBÍVEIS IMOBILIÁRIOS FDO. INVEST. IMOB.', 1.28, 1.07, 580, 100.52, -15.94, 1.18, 118.75, 21420, 0, 'Títulos e Val. Mob.', 'Indeterminado', 21.27, 1.77, '2021-04-05 00:52:50'),
(48, 'DMAC11', 'MAC FDO INV IMOB', 0.84, 0.81, 25, 160.07, -2.83, 0.49, 78.99, 671, 3.46, 'Residencial', 'Indeterminado', 32.99, 2.75, '2021-04-05 00:52:50'),
(49, 'DOMC11', 'REAG RENDA IMOBILIARIA FDO INV IMOB - FII', 0, 0, 270, 1109.62, 4.35, 0.4, 439, 42, 1.15, 'Lajes Corporativas', 'Indeterminado', 0, 0, '2021-04-05 00:52:50'),
(50, 'DOVL11B', 'DOVEL FDO INV IMOB', 0, 0, 58, 938.94, 0, 0.99, 931.32, 44, -20, 'N/A', 'Indeterminado', 0, 0, '2021-04-05 00:52:50'),
(51, 'DRIT11B', 'MULTIGESTÃO RENDA COMERCIAL FDO INV IMOB - FII', 0.15, 0.25, 61, 131.22, -7.6, 0.84, 109.79, 14, -4.53, 'Lajes Corporativas', 'Indeterminado', 4.28, 0.36, '2021-04-05 00:52:50'),
(52, 'EDFO11B', 'FDO INV IMOB EDIFÍCIO OURINVEST', 1.31, 0.53, 50, 213.76, -0.29, 1.19, 253.47, 2, 2.21, 'Lajes Corporativas', 'Indeterminado', 7, 0.58, '2021-04-05 00:52:50'),
(53, 'EDGA11', 'FDO INV IMOB - FII EDIFÍCIO GALERIA', 0.15, 0.56, 300, 78.51, -13.89, 0.34, 26.68, 4686, -1.48, 'Lajes Corporativas', 'Indeterminado', 6.38, 0.53, '2021-04-05 00:52:50'),
(54, 'EURO11', 'FDO INV IMOB EUROPAR', 1.35, 0.66, 110, 283.18, -2.57, 0.72, 205.02, 219, -0.04, 'Logística', 'Indeterminado', 6.41, 0.53, '2021-04-05 00:52:50'),
(55, 'FAED11', 'FDO INV IMOB - FII ANHANGUERA EDUCACIONAL', 1.34, 0.7, 140, 213.85, -2.15, 0.81, 173.5, 993, -2.96, 'Outros', 'Indeterminado', 8.93, 0.74, '2021-04-05 00:52:50'),
(56, 'FAMB11B', 'FDO INV IMOB - FII EDIFÍCIO ALMIRANTE BARROSO', 9.16, 0.56, 370, 3500.58, -47.51, 0.36, 0, 24, 2.86, 'Lajes Corporativas', 'Indeterminado', 26.04, 2.17, '2021-04-05 00:52:50'),
(57, 'FATN11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO ATHENA I', 0.66, 0.64, 54, 100.34, 3.56, 0.94, 94.04, 306, -8.25, 'Híbrido', 'Indeterminado', 7.16, 0.6, '2021-04-05 00:52:50'),
(58, 'FCFL11', 'FDO INV IMOB - FII CAMPUS FARIA LIMA', 0.61, 0.54, 350, 101.4, -0.09, 1.08, 109.99, 260, -0.01, 'Outros', 'Indeterminado', 6, 0.5, '2021-04-05 00:52:50'),
(59, 'FEXC11', 'FDO INV IMOB - FII BTG PACTUAL FUNDO DE CRI', 0.78, 0.83, 330, 95.81, -0.12, 0.99, 95.14, 3836, 0.15, 'Títulos e Val. Mob.', 'Indeterminado', 8.81, 0.73, '2021-04-05 00:52:50'),
(60, 'FFCI11', 'FDO INV IMOB RIO BRAVO RENDA CORPORATIVA', 0.72, 0.42, 370, 171.97, -0.33, 1.06, 182.03, 14342, -3.18, 'Lajes Corporativas', 'Indeterminado', 3.8, 0.32, '2021-04-05 00:52:50'),
(61, 'FIGS11', 'FDO INV IMOB GENERAL SHOPPING ATIVO E RENDA - FII', 0.1, 0.17, 270, 94.07, -7.57, 0.62, 58.54, 2980, -1.16, 'Shoppings', 'Indeterminado', 3.21, 0.27, '2021-04-05 00:52:50'),
(62, 'FIIB11', 'FDO INV IMOB INDUSTRIAL DO BRASIL', 3.1, 0.62, 300, 442.58, -3.81, 1.15, 506.99, 672, 0.63, 'Híbrido', 'Indeterminado', 5.71, 0.48, '2021-04-05 00:52:50'),
(63, 'FIIP11B', 'RB CAPITAL RENDA I FDO INV IMOB - FII', 1.28, 0.64, 180, 193.16, -1.31, 1.02, 197.89, 663, -0.05, 'Logística', 'Indeterminado', 10.45, 0.87, '2021-04-05 00:52:50'),
(64, 'FIVN11', 'FDO INV IMOB VIDA NOVA - FII', 0, 0, 67, 7.13, 0, 0.44, 3.13, 1436, 0.64, 'Shoppings', 'Indeterminado', 0, 0, '2021-04-05 00:52:50'),
(65, 'FLMA11', 'FII CONTINENTAL SQUARE FARIA LIMA', 0.01, 0.42, 220, 3.12, -5.94, 0.9, 2.79, 42685, 1.82, 'Híbrido', 'Indeterminado', 3.42, 0.28, '2021-04-05 00:52:50'),
(66, 'FLRP11', 'FDO INV IMOB - FII FLORIPA SHOPPING', 0, 0.43, 110, 1721.04, -0.33, 0.75, 0, 29, 0.45, 'Shoppings', 'Indeterminado', 6.14, 0.51, '2021-04-05 00:52:50'),
(67, 'FMOF11', 'FDO INV IMOB MEMORIAL OFFICE', 0.64, 0.25, 67, 132.22, 22.4, 0.55, 72.49, 7, -0.01, 'Lajes Corporativas', 'Indeterminado', 4.58, 0.38, '2021-04-05 00:52:50'),
(68, 'FOFT11', 'CSHG TOP FOFII 2 FDO INV IMOB - FII', 1.9, 1.54, 130, 104.98, 12.26, 1.17, 123, 5663, 0, 'Títulos e Val. Mob.', 'Indeterminado', 7.64, 0.64, '2021-04-05 00:52:50'),
(69, 'FPAB11', 'FDO INV IMOB PROJETO ÁGUA BRANCA', 1.2, 0.44, 340, 448.97, -0.68, 0.57, 255, 20, -5.56, 'Lajes Corporativas', 'Indeterminado', 7.89, 0.66, '2021-04-05 00:52:50'),
(70, 'FPNG11', 'FDO INV IMOB PEDRA NEGRA RENDA IMOB', 0.88, 0, 65, 102.68, 0, 0.97, 100, 10, 0, 'Lajes Corporativas', 'Indeterminado', 7.94, 0.66, '2021-04-05 00:52:50'),
(71, 'FVBI11', 'FDO INV IMOB VBI FL 4440 - FII', 30, 18.78, 0, 0, 18.78, 0, 159.71, 3042, 0.76, 'Lajes Corporativas', 'Indeterminado', 22.89, 1.91, '2021-04-05 00:52:50'),
(72, 'FVPQ11', 'FDO INV IMOB VIA PARQUE SHOPPING - FII', 0.46, 1.01, 550, 196.23, -2.13, 0.72, 140.96, 330, -0.04, 'Shoppings', 'Indeterminado', 6.32, 0.53, '2021-04-05 00:52:50'),
(73, 'GALG11', 'GUARDIAN LOGISTICA FDO. INVEST. IMOB.', 0.59, 0.74, 490, 86.98, -1.48, 1.3, 112.79, 9739, -0.14, 'N/A', 'N/A', 7.8, 0.65, '2021-04-05 00:52:50'),
(74, 'GCFF11', 'GALAPAGOS FUNDO DE FUNDOS - FII FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.62, 0.9, 34, 99.42, 7.77, 0.97, 96.31, 73, -1.4, 'Títulos e Val. Mob.', 'Indeterminado', 10.52, 0.88, '2021-04-05 00:52:50'),
(75, 'GGRC11', 'GGR COVEPI RENDA FDO INV IMOB', 0.68, 0.55, 970, 124.39, -11.18, 1, 125, 26279, 0.36, 'Logística', 'Indeterminado', 6.7, 0.56, '2021-04-05 00:52:50'),
(76, 'GRLV11', 'CSHG GR LOUVEIRA FDO DE INV IMOB - FII', 0.17, 0, 6.4, 5.97, 0, 24.38, 145.5, 54618, 1.04, 'Logística', 'Indeterminado', 41.67, 3.47, '2021-04-05 00:52:50'),
(77, 'GSFI11', 'GENERAL SHOP E OUTLETS DO BRASIL FDO INV IMOB - FI', 0, 0.03, 950, 13.86, 0.03, 0.25, 3.51, 5268, 0, 'Shoppings', 'Indeterminado', 0.24, 0.02, '2021-04-05 00:52:50'),
(78, 'GTWR11', 'FDO INV IMOB GREEN TOWERS', 0.67, 0.63, 1.2, 100.83, 0.63, 1.05, 106.2, 7828, -0.75, 'Lajes Corporativas', 'Indeterminado', 7.7, 0.64, '2021-04-05 00:52:50'),
(79, 'HABT11', 'HABITAT II - FDO INT IMOB', 1.5, 1.25, 550, 101.52, -1.1, 1.17, 118.61, 23050, -1.49, 'Títulos e Val. Mob.', 'Indeterminado', 11.43, 0.95, '2021-04-05 00:52:50'),
(80, 'HBRH11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO MULTI RENDA URBANA', 0.67, 0.67, 250, 109.32, 0.67, 0.9, 98.06, 627, -1.94, 'Híbrido', 'Indeterminado', 8.26, 0.69, '2021-04-05 00:52:50'),
(81, 'HBTT11', 'FDO INV IMOB HABITAT I', 16.58, 1.57, 160, 886.32, 1.91, 1.19, 0, 3, -1.37, 'Títulos e Val. Mob.', 'Determinado', 12.38, 1.03, '2021-04-05 00:52:50'),
(82, 'HCRI11', 'FDO INV IMOB - FII HOSPITAL DA CRIANÇA', 3.08, 0.62, 61, 303.05, -3.03, 1.55, 469, 73, -1.94, 'Hospital', 'Indeterminado', 7.13, 0.59, '2021-04-05 00:52:50'),
(83, 'HCTR11', 'HECTARE CE - FDO INV IMOB', 2, 1.34, 840, 117.88, -2.39, 1.29, 152.4, 30464, 0.16, 'Outros', 'Indeterminado', 14.19, 1.18, '2021-04-05 00:52:50'),
(84, 'HFOF11', 'HEDGE TOP FOFII 3 FDO INV IMOB', 0.56, 0.56, 2.1, 97, -2.03, 1.03, 100.05, 159844, -0.65, 'Títulos e Val. Mob.', 'Indeterminado', 7.75, 0.65, '2021-04-05 00:52:50'),
(85, 'HGBS11', 'HEDGE BRASIL SHOPPING FDO INV IMOB', 0.4, 0.2, 2.2, 220.42, -3.1, 0.92, 203, 7665, 0, 'Shoppings', 'Indeterminado', 2.71, 0.23, '2021-04-05 00:52:50'),
(86, 'HGCR11', 'CSHG RECEBÍVEIS IMOBILIÁRIOS FDO INV IMOB - FII', 0.68, 0.63, 1.3, 105.62, 5, 1.03, 108.56, 49654, -0.01, 'Títulos e Val. Mob.', 'Indeterminado', 6.24, 0.52, '2021-04-05 00:52:50'),
(87, 'HGFF11', 'CSHG IMOB. FOF - FDO INV. IMOB. - FII', 0.55, 0.6, 280, 98.17, -1.87, 0.92, 90.26, 8535, -1.89, 'Títulos e Val. Mob.', 'Indeterminado', 7.64, 0.64, '2021-04-05 00:52:50'),
(88, 'HGLG11', 'CSHG LOGÍSTICA FDO INV IMOB - FII', 0.78, 0.44, 2.7, 147.46, -1.25, 1.18, 174.65, 30001, -0.76, 'Logística', 'Indeterminado', 6.32, 0.53, '2021-04-05 00:52:50'),
(89, 'HGPO11', 'CSHG PRIME OFFICES FDO INV IMOB - FII', 1.01, 0.45, 400, 243.27, -2, 0.89, 217.28, 5320, -2.57, 'Lajes Corporativas', 'Indeterminado', 5.24, 0.44, '2021-04-05 00:52:50'),
(90, 'HGRE11', 'CSHG REAL ESTATE FDO INV IMOB - FII', 0.67, 0.49, 2, 169.18, -6.43, 0.81, 136.8, 25290, -0.73, 'Lajes Corporativas', 'Indeterminado', 5.8, 0.48, '2021-04-05 00:52:50'),
(91, 'HGRU11', 'CSHG RENDA URBANA - FDO INV IMOB - FII', 0.68, 0.55, 2.2, 117.87, -2.68, 1.05, 124.25, 33429, 0.29, 'Híbrido', 'Indeterminado', 6.6, 0.55, '2021-04-05 00:52:50'),
(92, 'HLOG11', 'HEDGE LOGÍSTICA FDO. INV. IMOB.', 0.63, 0.54, 510, 120.07, -0.66, 0.97, 116.19, 6765, -0.69, 'Logística', 'Indeterminado', 7.53, 0.63, '2021-04-05 00:52:50'),
(93, 'HMOC11', 'HEDGE SHOPPING PRAÇA DA MOÇA FDO INV IMOB', 23.8, 10.49, 91, 238.79, 22.83, 0.95, 226.95, 115, 0.44, 'Shoppings', 'Indeterminado', 66.11, 5.51, '2021-04-05 00:52:50'),
(94, 'HOSI11', 'FDO. INV. IMOB. HOUSI', 0.56, 0.67, 53, 92.93, -1.24, 0.87, 80.7, 199, -0.33, 'Híbrido', 'Indeterminado', 4.11, 0.34, '2021-04-05 00:52:50'),
(95, 'HPDP11', 'HEDGE SHOPPING PARQUE DOM PEDRO FDO. DE INV. IMOB.', 0, 0.04, 290, 100.66, -5.13, 0.81, 82, 105, -1.17, 'Shoppings', 'Indeterminado', 2.7, 0.23, '2021-04-05 00:52:50'),
(96, 'HRDF11', 'HEDGE REALTY DEVELOPMENT FDO INV IMOB', 6.8, 0, 14, 1.81, 0, 0.95, 1.72, 2416, 1.78, 'Híbrido', 'Determinado', 0, 0, '2021-04-05 00:52:50'),
(97, 'HREC11', 'HEDGE RECEBÍVEIS FDO. INVEST. IMOB.', 0.1, 0.77, 89, 99.21, 1.5, 1.04, 103, 2348, -0.96, 'N/A', 'N/A', 8.99, 0.75, '2021-04-05 00:52:50'),
(98, 'HSAF11', 'HSI ATIVOS FINANCEIROS - FUNDO DE INVESTIMENTO IMOBILIÁRIO', 1.1, 1.1, 89, 98.78, 2.94, 1, 98.49, 3130, -1.29, 'Títulos e Val. Mob.', 'Indeterminado', 7.41, 0.62, '2021-04-05 00:52:50'),
(99, 'HSLG11', 'HSI LOGÍSTICA FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.31, 0.52, 1.3, 105.46, -1.18, 1.04, 109.26, 7379, -1.56, 'Logística', 'Indeterminado', 5.63, 0.47, '2021-04-05 00:52:50'),
(100, 'HSML11', 'HSI MALL FDO INV IMOB', 0.16, 0.18, 1.5, 97.2, -4.41, 0.9, 87.34, 35724, -0.52, 'Shoppings', 'Indeterminado', 4.47, 0.37, '2021-04-05 00:52:50'),
(101, 'HTMX11', 'FDO INV IMOB - FII HOTEL MAXINVEST', 0, 0, 160, 131.03, -28.14, 0.83, 108.89, 1520, 1.76, 'Hotel', 'Indeterminado', 8.45, 0.7, '2021-04-05 00:52:50'),
(102, 'HUSC11', 'FDO INV IMOB HOSPITAL UNIMED SUL CAPIXABA', 0.59, 0.53, 100, 129.75, -10.25, 1.04, 135.5, 151, -1.38, 'Outros', 'Indeterminado', 6.03, 0.5, '2021-04-05 00:52:50'),
(103, 'IBFF11', 'FDO INV. IMOB. FOF INTEGRAL BREI', 0.42, 0.56, 58, 87.43, -4.35, 0.83, 72.96, 1545, 1.74, 'Títulos e Val. Mob.', 'Indeterminado', 6.47, 0.54, '2021-04-05 00:52:50'),
(104, 'IFID11', 'IFI-D FUNDO DE INVESTIMENTO IMOBILIARIO - FII', 0.69, 0, 72, 96.01, 0, 1.04, 99.75, 682, 0.25, 'N/A', 'N/A', 8.3, 0.69, '2021-04-05 00:52:50'),
(105, 'IFIE11', 'IFI-E FUNDO DE INVESTIMENTO IMOBILIARIO - FII', 0.45, 0.45, 83, 92.56, -0.32, 1.05, 97.5, 637, -1.76, 'Títulos e Val. Mob.', 'Indeterminado', 5.01, 0.42, '2021-04-05 00:52:50'),
(106, 'IRDM11', 'FII IRIDIUM RECEBÍVEIS IMOBILIÁRIOS', 1.23, 0.87, 1.6, 99.66, -2.93, 1.36, 135.98, 53175, 1.39, 'Títulos e Val. Mob.', 'Indeterminado', 9.5, 0.79, '2021-04-05 00:52:50'),
(107, 'JFLL11', 'JFL LIVING FDO. INV. IMOB.', 0.62, 0.66, 140, 93.89, 1.98, 1.02, 95.5, 453, 1.86, 'Residencial', 'Indeterminado', 8.17, 0.68, '2021-04-05 00:52:50'),
(108, 'JPPA11', 'JPP ALLOCATON MOGNO FUNDO DE INVESTIMENTO IMOBILIÁRIO', 1.05, 1.05, 63, 104.07, 2.07, 0.95, 99.03, 639, -0.97, 'Títulos e Val. Mob.', 'Indeterminado', 9.02, 0.75, '2021-04-05 00:52:50'),
(109, 'JRDM11', 'FII SHOPPING JARDIM SUL', 0.32, 0.48, 220, 87.44, 0.48, 0.78, 68.48, 607, -0.75, 'Shoppings', 'Indeterminado', 1.55, 0.13, '2021-04-05 00:52:50'),
(110, 'JSRE11', 'JS REAL ESTATE MULTIGESTÃO - FII', 0.53, 0.56, 2.4, 113.78, -2.87, 0.82, 93.53, 35521, -1.09, 'Híbrido', 'Indeterminado', 6.48, 0.54, '2021-04-05 00:52:50'),
(111, 'KFOF11', 'FUNDO DE FDO INV IMOB KINEA FII', 0.55, 0.58, 480, 106.94, -6.06, 0.88, 94.01, 4794, -1, 'Títulos e Val. Mob.', 'Indeterminado', 6.65, 0.55, '2021-04-05 00:52:50'),
(112, 'KINP11', 'EVEN PERMUTA KINEA FII - FDO INV IMOB', 0.19, 0, 65, 9.1, 0, 1.46, 13.31, 2, -2.85, 'Residencial', 'Determinado', 15.51, 1.29, '2021-04-05 00:52:50'),
(113, 'KISU11', 'KILIMA FIC FDO. IMOB. SUNO 30', 0.25, 0.69, 74, 97.33, 6.11, 1.23, 120, 22109, 2.55, 'Títulos e Val. Mob.', 'Indeterminado', 6.07, 0.51, '2021-04-05 00:52:50'),
(114, 'KNCR11', 'KINEA RENDIMENTOS IMOBILIÁRIOS FDO INV IMOB - FII', 0.33, 0.35, 3.8, 98.25, 4.97, 0.95, 93.01, 32968, -0.55, 'Títulos e Val. Mob.', 'Indeterminado', 3.88, 0.32, '2021-04-05 00:52:50'),
(115, 'KNHY11', 'KINEA HIGH YIELD CRI FDO INV IMOB - FII', 1.12, 0.98, 1.1, 103.48, -0.97, 1.11, 114.45, 6910, -0.24, 'Títulos e Val. Mob.', 'Indeterminado', 8.55, 0.71, '2021-04-05 00:52:50'),
(116, 'KNIP11', 'KINEA ÍNDICES DE PREÇOS FDO INV IMOB - FII', 1.02, 0.88, 4.9, 103.63, 0.86, 1.11, 115.35, 73845, -0.52, 'Títulos e Val. Mob.', 'Indeterminado', 8.96, 0.75, '2021-04-05 00:52:50'),
(117, 'KNRE11', 'KINEA II REAL ESTATE EQUITY FDO INV IMOB', 0, 3.92, 60, 3.22, 9.41, 0.91, 2.92, 16482, -12.84, 'Residencial', 'Determinado', 18.72, 1.56, '2021-04-05 00:52:50'),
(118, 'KNRI11', 'KINEA RENDA IMOBILIÁRIA FDO INV IMOB - FII', 0.69, 0.45, 3.8, 156.05, -3.08, 0.98, 153.47, 19518, 0.48, 'Híbrido', 'Indeterminado', 5.16, 0.43, '2021-04-05 00:52:50'),
(119, 'KNSC11', 'KINEA SECURITIES FDO. DE INV. IMOB. - FII', 0.48, 0.83, 250, 94.18, 3.3, 1.13, 106.18, 15592, -2.59, 'Títulos e Val. Mob.', 'Indeterminado', 10.47, 0.87, '2021-04-05 00:52:50'),
(120, 'LASC11', 'LEGATUS SHOPPINGS FDO. INV. IMOB. - FII', 0.48, 0.5, 260, 103.14, -0.12, 0.92, 95.4, 3, 0, 'Shoppings', 'Indeterminado', 4.12, 0.34, '2021-04-05 00:52:50'),
(121, 'LFTT11', 'LOFT II FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.75, 0, 0, 0, 0, 0, 105.99, 17664, 2.41, 'Residencial', 'Indeterminado', 8.46, 0.71, '2021-04-05 00:52:50'),
(122, 'LGCP11', 'LOGCP INTER FDO INV IMOB', 0.55, 0.58, 270, 98.79, -3.71, 0.96, 94.51, 463, 0.01, 'Logística', 'Indeterminado', 6.21, 0.52, '2021-04-05 00:52:50'),
(123, 'LUGG11', 'LUGGO FDO. INV. IMOB.', 0.49, 0.51, 99, 109.82, -3.72, 0.88, 96.39, 165, 0.63, 'Residencial', 'Indeterminado', 5.92, 0.49, '2021-04-05 00:52:50'),
(124, 'LVBI11', 'FDO INV IMOB - VBI LOGÍSTICO', 0.52, 0.46, 1.3, 110.13, -2.95, 1.01, 111.21, 34055, -2.45, 'Logística', 'Indeterminado', 5.88, 0.49, '2021-04-05 00:52:50'),
(125, 'MALL11', 'MALLS BRASIL PLURAL FDO INV IMOB', 0.45, 0.47, 800, 105.34, -4.67, 0.91, 95.79, 14580, 0.64, 'Shoppings', 'Indeterminado', 4.72, 0.39, '2021-04-05 00:52:50'),
(126, 'MAXR11', 'FDO INV IMOB - FII MAX RETAIL', 0, 0.72, 130, 2235.16, 0.72, 0.83, 0, 149, 1.09, 'Outros', 'Indeterminado', 7.25, 0.6, '2021-04-05 00:52:50'),
(127, 'MBRF11', 'FDO INV IMOB MERCANTIL DO BRASIL - FII', 6.9, 0.8, 120, 1138.69, -7.45, 0.7, 800, 117, 1.2, 'Outros', 'Indeterminado', 12.06, 1.01, '2021-04-05 00:52:50'),
(128, 'MCCI11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO MAUÁ CAPITAL RECEBÍVEIS IMOBILIÁRIOS - FII', 0.7, 0.67, 890, 99.7, 2.57, 1.03, 103.09, 31111, -0.85, 'Títulos e Val. Mob.', 'Indeterminado', 7.03, 0.59, '2021-04-05 00:52:50'),
(129, 'MFAI11', 'MERITO FDO. AÇÕES IMOB. FII - FDO INV. IMOB.', 1, 0.95, 29, 95.45, -0.39, 1.04, 99.35, 1006, -5.29, 'Híbrido', 'Indeterminado', 34.4, 2.87, '2021-04-05 00:52:50'),
(130, 'MFII11', 'MÉRITO DESENVOLVIMENTO IMOBILIÁRIO I - FII', 0.97, 0.8, 390, 119.69, -6.71, 1, 119.32, 7988, -1.3, 'Híbrido', 'Indeterminado', 10.2, 0.85, '2021-04-05 00:52:50'),
(131, 'MGCR11', 'FDO. INVEST. IMOB. MOGNO CRI HIGH GRADE', 0.9, 0.91, 69, 95.36, 3.9, 1.08, 102.9, 3066, 0.4, 'N/A', 'N/A', 7.13, 0.59, '2021-04-05 00:52:50'),
(132, 'MGFF11', 'FUNDO DE INVESTIMENTO IMOBILIARIO MOGNO FUNDO DE FUNDOS', 0.65, 0.74, 800, 88.57, 2.06, 0.97, 86, 30908, 0.58, 'Títulos e Val. Mob.', 'Indeterminado', 8, 0.67, '2021-04-05 00:52:50'),
(133, 'MGHT11', 'FDO. INV. IMOB. MOGNO HOTEIS', 0.65, 0.67, 110, 100.33, -2.32, 0.97, 97.5, 2, 0, 'Hotel', 'Indeterminado', 6.81, 0.57, '2021-04-05 00:52:50'),
(134, 'MORE11', 'MORE REAL ESTATE FOF FII FDO. INV. IMOB.', 0.37, 0.53, 230, 100.61, -10.26, 0.97, 98, 1948, -2.49, 'Títulos e Val. Mob.', 'Indeterminado', 8.28, 0.69, '2021-04-05 00:52:50'),
(135, 'MXRF11', 'MAXI RENDA FDO INV IMOB - FII', 0.08, 0.77, 1.8, 10.07, -2.96, 1.02, 10.32, 784916, -0.77, 'Híbrido', 'Indeterminado', 8.24, 0.69, '2021-04-05 00:52:50'),
(136, 'NCHB11', 'FDO INV IMOB - FII NCH BRASIL RECEBÍVEIS IMOB', 0.7, 0.7, 53, 92.73, -4.82, 1.12, 104, 1744, -0.67, 'Títulos e Val. Mob.', 'Indeterminado', 11.15, 0.93, '2021-04-05 00:52:50'),
(137, 'NEWL11', 'NEWPORT LOGÍSTICA FDO INV. IMOB.', 0.83, 0.87, 140, 110.86, -1.01, 0.93, 103.2, 9816, -0.29, 'Híbrido', 'Indeterminado', 8.36, 0.7, '2021-04-05 00:52:50'),
(138, 'NEWU11', 'NEWPORT RENDA URBANA FDO INV IMOB', 0, 0, 48, 64.71, -4.04, 0.63, 40.48, 5, 1.2, 'Lajes Corporativas', 'Indeterminado', 27.11, 2.26, '2021-04-05 00:52:50'),
(139, 'NSLU11', 'FDO INV IMOB - FII HOSPITAL NOSSA SRA DE LOURDES', 1.79, 0.68, 240, 212.99, -3.71, 1.22, 259.99, 937, -0.78, 'Hospital', 'Indeterminado', 9.77, 0.81, '2021-04-05 00:52:50'),
(140, 'NVHO11', 'FDO INV IMOB - FII NOVO HORIZONTE', 0.07, 0.47, 510, 12.36, -8.34, 1.22, 15.14, 577, 0.26, 'Hospital', 'Indeterminado', 5.81, 0.48, '2021-04-05 00:52:50'),
(141, 'ONEF11', 'FDO INV IMOB THE ONE', 0.64, 0.44, 150, 160.46, 0.93, 0.88, 140.69, 158, -0.37, 'Lajes Corporativas', 'Indeterminado', 5.38, 0.45, '2021-04-05 00:52:50'),
(142, 'ORPD11', 'OURO PRETO DESENV IMOB I FDO INV IMOB - FII', 1.38, 0, 42, 144.53, 0, 0.9, 129.99, 3, 0, 'Títulos e Val. Mob.', 'Indeterminado', 12.73, 1.06, '2021-04-05 00:52:50'),
(143, 'OUCY11', 'FUNDO INV IMOB - OURINVEST CYRELA - FII', 0.65, 0.76, 84, 100.69, 5.81, 0.88, 88.5, 5238, 0.4, 'Títulos e Val. Mob.', 'Indeterminado', 8.03, 0.67, '2021-04-05 00:52:50'),
(144, 'OUFF11', 'FDO INV IMOB - OURINVEST FUNDO DE FUNDOS', 0.6, 0.71, 160, 90.74, -2.67, 0.92, 83.55, 3402, 0.78, 'Títulos e Val. Mob.', 'Indeterminado', 8.92, 0.74, '2021-04-05 00:52:50'),
(145, 'OUJP11', 'OURINVEST JPP FDO INV IMOB - FII', 0.65, 0.61, 240, 103.89, 5.63, 1.02, 105.71, 6836, -1, 'Títulos e Val. Mob.', 'Indeterminado', 7.4, 0.62, '2021-04-05 00:52:50'),
(146, 'OULG11', 'FDO INV IMOB OURINVEST LOGÍSTICA', 0.5, 0.7, 230, 94.26, -6.9, 0.77, 72.4, 2278, -0.14, 'Outros', 'Indeterminado', 10.04, 0.84, '2021-04-05 00:52:50'),
(147, 'OURE11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO OURINVEST RENDA ESTRUTURADA', 0.64, 0.69, 83, 99.44, -1.95, 0.89, 88.94, 376, 2.17, 'Títulos e Val. Mob.', 'Indeterminado', 8.42, 0.7, '2021-04-05 00:52:50'),
(148, 'PABY11', 'FDO INV IMOB PANAMBY', 0, 0, -4.9, -6.51, -19.84, -2.01, 13.08, 163, -0.15, 'Híbrido', 'Indeterminado', 0, 0, '2021-04-05 00:52:50'),
(149, 'PATC11', 'PÁTRIA EDIFÍCIOS CORPORATIVOS FDO INV IMOB - FII', 0.31, 0.45, 350, 101.48, -19.87, 0.67, 67.99, 126714, -1.18, 'Lajes Corporativas', 'Indeterminado', 5.08, 0.42, '2021-04-05 00:52:50'),
(150, 'PATL11', 'PÁTRIA LOGÍSTICA FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.57, 0.63, 480, 97.08, -0.86, 0.94, 91.55, 8037, 0.46, 'Híbrido', 'Indeterminado', 6.29, 0.52, '2021-04-05 00:52:50'),
(151, 'PLCR11', 'FDO INV. IMOB. PLURAL RECEBIVEIS', 0.8, 0.83, 210, 98.26, 2.6, 0.97, 94.98, 3210, -1.04, 'Híbrido', 'Indeterminado', 6.74, 0.56, '2021-04-05 00:52:50'),
(152, 'PLOG11', 'PLURAL LOGÍSTICA FDO. INV. IMOB.', 0.04, 0, 0, 0, 0, 0, 90, 2690, -0.01, 'N/A', 'N/A', 0.53, 0.04, '2021-04-05 00:52:50'),
(153, 'PLRI11', 'POLO FDO INV IMOB - FII RECEBÍVEIS IMOBILIÁRIOS I', 0.09, 0.2, 52, 54.86, -1.49, 0.81, 44.67, 554, -2.89, 'Títulos e Val. Mob.', 'Indeterminado', 6.28, 0.52, '2021-04-05 00:52:50'),
(154, 'PORD11', 'POLO FDO INV IMOB - RECEBÍVEIS IMOB II - FII', 0.86, 0.82, 200, 100.93, 1.89, 1.03, 104, 2402, -0.57, 'Títulos e Val. Mob.', 'Indeterminado', 8.94, 0.74, '2021-04-05 00:52:50'),
(155, 'PQAG11', 'PARQUE ANHANGUERA FDO. INVEST. IMOB.', 3.5, 0.53, 760, 54.37, -3.66, 1.25, 68, 4, 0, 'Logística', 'Indeterminado', 30.96, 2.58, '2021-04-05 00:52:50'),
(156, 'PQDP11', 'FDO INV IMOB - FII PARQUE D. PEDRO SHOPPING CENTER', 11.19, 0.42, 860, 3603.43, -3.28, 0.77, 0, 11, 0.73, 'Shoppings', 'Indeterminado', 5.29, 0.44, '2021-04-05 00:52:50'),
(157, 'PRSV11', 'FDO INV IMOB - FII PRESIDENTE VARGAS', 1.62, 0.42, 46, 235.83, 5.74, 0.62, 147.2, 987, -1.83, 'Lajes Corporativas', 'Indeterminado', 15.3, 1.28, '2021-04-05 00:52:50'),
(158, 'PVBI11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO - VBI PRIME PROPERTIES', 0.5, 0.52, 940, 96.44, -0.69, 0.99, 95.55, 20295, -0.94, 'Lajes Corporativas', 'Indeterminado', 6.03, 0.5, '2021-04-05 00:52:50'),
(159, 'QAGR11', 'QUASAR AGRO - FDO INV. IMOB.', 0.4, 0.75, 300, 58.55, -0.09, 0.91, 53.52, 13810, -0.34, 'Outros', 'Indeterminado', 8.08, 0.67, '2021-04-05 00:52:50'),
(160, 'QIFF11', 'QUATÁ IMOB FUNDO DE FUNDOS - FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.75, 0.73, 15, 100.76, -1.75, 1.01, 102.15, 2779, -0.73, 'Títulos e Val. Mob.', 'Indeterminado', 8.99, 0.75, '2021-04-05 00:52:50'),
(161, 'QMFF11', 'QUATÁ MONETAI FUNDO DE FUNDOS - FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.87, 0.88, 15, 100.76, 2.96, 0.98, 98.52, 1011, 0.02, 'Títulos e Val. Mob.', 'Indeterminado', 9.43, 0.79, '2021-04-05 00:52:50'),
(162, 'RBBV11', 'JHSF RIO BRAVO FAZENDA BOA VISTA CAP. PROT. - FII', 0, 0.99, 130, 100.24, -3.2, 0.97, 97.13, 1192, 1.23, 'Títulos e Val. Mob.', 'Determinado', 6.26, 0.52, '2021-04-05 00:52:50'),
(163, 'RBCB11', 'RIO BRAVO CRÉDITO IMOBILIÁRIO I FDO INV IMOB', 0, 0, 0, 0, -71.35, 0, 19, 161, -9.44, 'Outros', 'Determinado', 169.74, 14.15, '2021-04-05 00:52:50'),
(164, 'RBCO11', 'RB CAPITAL OFFICE INCOME FDO INV. IMOB.', 0.42, 0.61, 390, 102.62, -9.67, 0.65, 66.4, 5431, -2.84, 'Lajes Corporativas', 'Indeterminado', 8.55, 0.71, '2021-04-05 00:52:50'),
(165, 'RBDS11', 'RB CAPITAL DESENV. RESID. II FDO INV IMOB - FII', 1.84, 0, 2.8, 22.51, 0, 0.92, 20.81, 103, -8.08, 'Residencial', 'Determinado', 8.85, 0.74, '2021-04-05 00:52:50'),
(166, 'RBED11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO RIO BRAVO RENDA EDUCACIONAL', 1.03, 0.71, 270, 150.56, -3.07, 0.95, 143.02, 2529, -1.33, 'Outros', 'Indeterminado', 8.46, 0.71, '2021-04-05 00:52:50'),
(167, 'RBFF11', 'RIO BRAVO IFIX FDO INV IMOB', 0.5, 0.74, 280, 74.92, -5.78, 0.9, 67.65, 5164, 0.46, 'Títulos e Val. Mob.', 'Indeterminado', 8.41, 0.7, '2021-04-05 00:52:50'),
(168, 'RBGS11', 'RB CAPITAL GENERAL SHOP SULACAP FDO INV IMOB - FII', 0.43, 0.7, 98, 90.93, -2.66, 0.42, 38.62, 1037, 0.29, 'Shoppings', 'Indeterminado', 7.45, 0.62, '2021-04-05 00:52:50'),
(169, 'RBIV11', 'RIO BRAVO CRÉDITO IMOB IV FDO INV IMOB - FII', 0.12, 0.81, 100, 99.95, 1.54, 0.86, 85.6, 1783, -0.93, 'Títulos e Val. Mob.', 'Indeterminado', 7.15, 0.6, '2021-04-05 00:52:50'),
(170, 'RBRD11', 'RB CAPITAL RENDA II FDO INV IMOB - FII', 0.02, 0.04, 130, 70.06, -13.98, 0.85, 59.78, 587, -0.18, 'Híbrido', 'Indeterminado', 35.41, 2.95, '2021-04-05 00:52:50'),
(171, 'RBRF11', 'RBR ALPHA MULTIESTRATÉGIA REAL ESTATE FDO INV IMOB', 0.6, 0.65, 1.3, 93.07, -6.23, 1, 93.4, 45182, 0.98, 'Títulos e Val. Mob.', 'Indeterminado', 8.28, 0.69, '2021-04-05 00:52:50'),
(172, 'RBRL11', 'RBR LOG FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.62, 0.58, 600, 106.74, 0.01, 1.01, 107.97, 4197, 0.78, 'Logística', 'Indeterminado', 6.54, 0.55, '2021-04-05 00:52:50'),
(173, 'RBRP11', 'FDO INV IMOB RBR PROPERTIES - FII', 0.52, 0.57, 750, 87.61, -7, 1.04, 91.2, 25725, -0.83, 'Outros', 'Indeterminado', 6.64, 0.55, '2021-04-05 00:52:50'),
(174, 'RBRR11', 'FDO INV IMOB - FII RBR RENDIMENTO HIGH GRADE', 0.62, 0.64, 760, 99.22, 1.63, 1, 99.6, 16717, -0.11, 'Títulos e Val. Mob.', 'Indeterminado', 6.55, 0.55, '2021-04-05 00:52:50'),
(175, 'RBRS11', 'RIO BRAVO RENDA RESIDENCIAL FDO. INVEST. IMOB.', 0.42, 0.5, 100, 96.72, -10.62, 0.83, 80, 164, 0, 'N/A', 'N/A', 6.08, 0.51, '2021-04-05 00:52:50'),
(176, 'RBRY11', 'FDO INV IMOB RBR PRIVATE CRÉDITO IMOB', 0.75, 0.71, 210, 104.93, -0.69, 1.01, 106, 20852, 0.48, 'Títulos e Val. Mob.', 'Indeterminado', 7.75, 0.65, '2021-04-05 00:52:50'),
(177, 'RBVA11', 'FDO INV IMOB RIO BRAVO RENDA VAREJO - FII', 0.85, 0.77, 1.3, 114.42, 0.54, 0.97, 110.47, 17112, -0.21, 'Outros', 'Indeterminado', 9.5, 0.79, '2021-04-05 00:52:50'),
(178, 'RBVO11', 'RIO BRAVO CRÉDITO IMOBILIÁRIO II FDO INV IMOB -FII', 0.02, 0.18, 11, 22.22, -12.5, 0.6, 13.37, 78, -0.67, 'Outros', 'Determinado', 7.39, 0.62, '2021-04-05 00:52:50'),
(179, 'RCRB11', 'FDO INV IMOB RIO BRAVO RENDA CORPORATIVA', 0.8, 0.5, 730, 197.68, -3.29, 0.82, 162, 6638, 1.2, 'Lajes Corporativas', 'Indeterminado', 6.48, 0.54, '2021-04-05 00:52:50'),
(180, 'RDES11', 'RENDA DE ESCRITÓRIOS FDO INV IMOB - FII', 0.04, 0.06, 66, 88.83, 0.06, 0.65, 58, 10296, 5.45, 'Lajes Corporativas', 'Indeterminado', 21.18, 1.76, '2021-04-05 00:52:50'),
(181, 'RDPD11', 'BB RENDA DE PAPEIS IMOB II FDO INV IMOB - FII', 0.47, 0.56, 110, 98.66, 4.53, 0.85, 83.6, 115, -0.89, 'Títulos e Val. Mob.', 'Determinado', 5.39, 0.45, '2021-04-05 00:52:50'),
(182, 'RECR11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO - FII REC RECEBÍVEIS IMOBILIÁRIOS', 1, 0.87, 1.4, 95.8, 3.49, 1.12, 106.87, 38647, 1.27, 'Títulos e Val. Mob.', 'Indeterminado', 11.62, 0.97, '2021-04-05 00:52:50'),
(183, 'RECT11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO - FII REC RENDA IMOBILIÁRIA', 0.72, 0.83, 670, 95.98, -8.53, 0.91, 87, 25943, 0, 'Híbrido', 'Indeterminado', 10.45, 0.87, '2021-04-05 00:52:50'),
(184, 'RELG11', 'FDO INV. IMOB. REC LOGISTICA', 0.74, 0.76, 90, 96.35, -0.56, 1.03, 98.8, 2157, -0.1, 'Híbrido', 'Indeterminado', 7.24, 0.6, '2021-04-05 00:52:50'),
(185, 'RFOF11', 'FDO. INVEST. IMOB. RB CAPITAL I FUNDO DE FUNDOS', 0.18, 0.73, 100, 94.84, -1.91, 0.92, 86.85, 1272, 0.18, 'Títulos e Val. Mob.', 'Indeterminado', 6.61, 0.55, '2021-04-05 00:52:50'),
(186, 'RNDP11', 'BB RENDA DE PAPÉIS IMOBILIÁRIOS FDO INV IMOB - FII', 4.2, 0.51, 100, 937.38, 6.54, 0.89, 829.99, 2, 3.88, 'Títulos e Val. Mob.', 'Determinado', 4.96, 0.41, '2021-04-05 00:52:50'),
(187, 'RNGO11', 'FDO INV IMOB RIO NEGRO - FII', 0.39, 0.6, 270, 101.18, 0.64, 0.64, 64.32, 4243, -0.29, 'Lajes Corporativas', 'Indeterminado', 8.1, 0.67, '2021-04-05 00:52:50'),
(188, 'RVBI11', 'VBI REITS FOF - FDO. INV. IMOB', 0.72, 0.78, 140, 96.29, -3.29, 0.98, 94.75, 6141, 1.28, 'Títulos e Val. Mob.', 'Indeterminado', 6.79, 0.57, '2021-04-05 00:52:50'),
(189, 'RZAK11', 'RIZA AKIN FDO. INV. IMOB. FII', 0.5, 0.52, 290, 97.07, -2.91, 1, 97.25, 18564, 0.76, 'Títulos e Val. Mob.', 'Indeterminado', 2.09, 0.17, '2021-04-05 00:52:50'),
(190, 'RZTR11', 'FUNDO DE INVESTIMENTO IMOBILIÁRIO RIZA TERRAX', 0.8, 0.78, 470, 96.67, -0.18, 1.06, 102.05, 36756, -0.42, 'Híbrido', 'Indeterminado', 7.86, 0.66, '2021-04-05 00:52:50'),
(191, 'SAAG11', 'SANTANDER AGÊNCIAS FDO INV IMOB - FII', 0.93, 0.8, 630, 111.5, -9.2, 0.96, 106.61, 12868, -0.9, 'Outros', 'Indeterminado', 10.43, 0.87, '2021-04-05 00:52:50'),
(192, 'SADI11', 'SANTANDER PAPEIS IMOB CDI FDO INV IMOB', 0.21, 0.23, 320, 100.39, 5.41, 0.82, 82.12, 3507, 0.53, 'Títulos e Val. Mob.', 'Indeterminado', 2.93, 0.24, '2021-04-05 00:52:50'),
(193, 'SAIC11B', 'FDO INV IMOB - FII SIA CORPORATE', 0.73, 0, 79, 55.01, 0, 0.66, 36.05, 2, 0, 'Lajes Corporativas', 'Indeterminado', 24.56, 2.05, '2021-04-05 00:52:50'),
(194, 'SARE11', 'SANTANDER RENDA DE ALUGUÉIS FDO. INVEST. IMOB.', 0.08, 0.67, 540, 100.35, -1.64, 0.97, 97.4, 10435, 0, 'Híbrido', 'Indeterminado', 3.94, 0.33, '2021-04-05 00:52:50'),
(195, 'SCPF11', 'FDO INV IMOB SCP', 0, 0.54, 53, 12.65, 0.54, 0.72, 9.09, 275, 0.22, 'Shoppings', 'Indeterminado', 3.08, 0.26, '2021-04-05 00:52:50'),
(196, 'SDIL11', 'SDI LOGÍSTICA RIO FDO INV IMOB - FII', 0.6, 0.6, 660, 103.81, -2.71, 0.95, 98.75, 6457, -1.15, 'Logística', 'Indeterminado', 6.61, 0.55, '2021-04-05 00:52:50'),
(197, 'SDIP11', 'SDI PROPERTIES - FDO INV. IMOB', 0.49, 0.54, 350, 96.42, 1.68, 0.91, 88, 7755, -1.01, 'Lajes Corporativas', 'Indeterminado', 6.33, 0.53, '2021-04-05 00:52:50'),
(198, 'SHDP11B', 'FDO INV IMOB - FII SHOPPING PARQUE D. PEDRO', 5.63, 0, 2.1, 1476.74, 0, 0.82, 0, 100, 0, 'Shoppings', 'Indeterminado', 5.34, 0.45, '2021-04-05 00:52:50'),
(199, 'SHPH11', 'FDO INV IMOB SHOPPING PÁTIO HIGIENÓPOLIS', 1.63, 0.2, 500, 820.11, -2.31, 1, 818.01, 90, 0, 'Shoppings', 'Indeterminado', 3.25, 0.27, '2021-04-05 00:52:50'),
(200, 'SPTW11', 'SP DOWNTOWN FDO INV IMOB - FII', 5.15, 6.36, 120, 69.3, 4.98, 0.91, 63.1, 22219, -22.03, 'Lajes Corporativas', 'Indeterminado', 21.33, 1.78, '2021-04-05 00:52:50'),
(201, 'TBOF11', 'FDO INV IMOB - FII TB OFFICE', 0.41, 0.4, 1.7, 0.17, 4.25, 608.72, 101.5, 13109, 0.4, 'Lajes Corporativas', 'Indeterminado', 4.09, 0.34, '2021-04-05 00:52:50'),
(202, 'TEPP11', 'TELLUS PROPERTIES FUNDO DE INVESTIMENTO IMOBILIÁRIO', 0.45, 0.52, 400, 94.91, -2.36, 0.88, 83.71, 7309, -2.55, 'Lajes Corporativas', 'Indeterminado', 7.05, 0.59, '2021-04-05 00:52:50'),
(203, 'TGAR11', 'FDO INV IMOB TG ATIVO REAL', 1.3, 0.95, 960, 129.87, -3.48, 1.04, 135.15, 22007, -1.21, 'Outros', 'Indeterminado', 10.17, 0.85, '2021-04-05 00:52:50'),
(204, 'THRA11', 'FDO INV IMOB - FII CYRELA THERA CORPORATE', 0.28, 0.21, 170, 114.11, 1.35, 1.19, 135.3, 14, 0.08, 'Lajes Corporativas', 'Indeterminado', 4.84, 0.4, '2021-04-05 00:52:50'),
(205, 'TORD11', 'TORDESILHAS EI FDO. INV. IMOB.', 0.12, 1.06, 140, 10.41, -4.34, 1.14, 11.85, 127154, 0.51, 'Outros', 'Indeterminado', 12.08, 1.01, '2021-04-05 00:52:50'),
(206, 'TRNT11', 'FDO INV IMOB - FII TORRE NORTE', 0.38, 0.23, 820, 207.4, 7.97, 0.82, 169.67, 124, 0.01, 'Lajes Corporativas', 'Indeterminado', 3.34, 0.28, '2021-04-05 00:52:50'),
(207, 'TRXF11', 'TRX REAL ESTATE FDO. INV. IMOB. - FII', 0.7, 0.65, 560, 106.51, -3.3, 1, 106.3, 14930, -1.12, 'Outros', 'Indeterminado', 7.21, 0.6, '2021-04-05 00:52:50'),
(208, 'TRXL11', 'TRX REALTY LOGÍSTICA RENDA I FDO INV IMOB - FII', 0.4, 0.38, 180, 98.1, -1.6, 1.05, 103.38, 9524, -0.1, 'Logística', 'Indeterminado', 4.56, 0.38, '2021-04-05 00:52:50'),
(209, 'UBSR11', 'FDO INV IMOB - FII UBS (BR) RECEB IMOB', 0.7, 0.7, 670, 97.27, -0.69, 1.05, 102.5, 17369, 0.22, 'Títulos e Val. Mob.', 'Indeterminado', 8.67, 0.72, '2021-04-05 00:52:50'),
(210, 'URPR11', 'URCA PRIME RENDA FUNDO DE INVESTIMENTO IMOBILIÁRIO', 1.56, 2.16, 77, 101.94, 5.96, 1.25, 127.9, 9780, -3.73, 'Outros', 'Indeterminado', 16.53, 1.38, '2021-04-05 00:52:50'),
(211, 'VCJR11', 'VECTIS JUROS REAL FDO INV. IMOB. - FII', 0.6, 0.57, 1.1, 99.11, 0.11, 1.04, 103, 16060, -1.44, 'Títulos e Val. Mob.', 'Indeterminado', 7.68, 0.64, '2021-04-05 00:52:50'),
(212, 'VERE11', 'FDO INV IMOB VEREDA - FII', 1.36, 0, 170, 312.52, 0, 0.82, 257, 1, 0.61, 'Híbrido', 'Indeterminado', 6.35, 0.53, '2021-04-05 00:52:50'),
(213, 'VGIP11', 'VALORA CRI ÍNDICE DE PREÇO FDO INVEST. IMOB. FII', 1.15, 0.99, 330, 94.81, 2.34, 1.14, 108.23, 26157, -1.4, 'Outros', 'Indeterminado', 10.02, 0.83, '2021-04-05 00:52:50'),
(214, 'VGIR11', 'VALORA RE III FDO INV IMOB - FII', 0.45, 0.5, 440, 96.89, 2.43, 0.98, 95.1, 7745, -1.14, 'Títulos e Val. Mob.', 'Indeterminado', 5.78, 0.48, '2021-04-05 00:52:50'),
(215, 'VIFI11', 'VINCI INSTRUMENTOS FINANCEIROS FDO INV IMOB - FII', 0.6, 0.68, 290, 101.68, -4.62, 0.87, 88.1, 4174, 0, 'Títulos e Val. Mob.', 'Indeterminado', 8.57, 0.71, '2021-04-05 00:52:50'),
(216, 'VILG11', 'VINCI LOGÍSTICA FDO INV IMOB - FII', 0.45, 0.38, 1.2, 114.85, -4.1, 1.03, 118.02, 47444, 0.03, 'Logística', 'Indeterminado', 5.58, 0.47, '2021-04-05 00:52:50'),
(217, 'VINO11', 'VINCI OFFICES FDO INV IMOB', 0.45, 0.73, 770, 60.53, 0.39, 1.02, 61.5, 25079, -0.47, 'Lajes Corporativas', 'Indeterminado', 7.56, 0.63, '2021-04-05 00:52:50'),
(218, 'VISC11', 'VINCI SHOPPING CENTERS FDO INVEST IMOB - FII', 0.18, 0.16, 1.7, 119.37, -3.48, 0.91, 108.87, 24730, -1.32, 'Shoppings', 'Indeterminado', 3.61, 0.3, '2021-04-05 00:52:50'),
(219, 'VLOL11', 'FDO INV IMOB - FII VILA OLÍMPIA CORPORATE', 0.46, 0.45, 170, 96.89, -1.66, 1.07, 103.39, 1835, 0.87, 'Lajes Corporativas', 'Indeterminado', 5.17, 0.43, '2021-04-05 00:52:50'),
(220, 'VOTS11', 'VOTORANTIM SECURITIES MASTER FDO INV IMOB - FII', 0.44, 0.52, 82, 98.82, 4.79, 0.85, 84.45, 2, 0.01, 'Títulos e Val. Mob.', 'Indeterminado', 4.78, 0.4, '2021-04-05 00:52:50'),
(221, 'VRTA11', 'FATOR VERITA FDO INV IMOB - FII', 0.9, 0.78, 1, 100.81, 0.42, 1.12, 113.35, 20751, -1.43, 'Títulos e Val. Mob.', 'Indeterminado', 8.11, 0.68, '2021-04-05 00:52:50'),
(222, 'VSHO11', 'FDO INV IMOB VOTORANTIM SHOPPING', 0.28, 0.14, 210, 100.19, -5.98, 0.7, 70.45, 89, -0.09, 'Shoppings', 'Indeterminado', 5.82, 0.49, '2021-04-05 00:52:50'),
(223, 'VTLT11', 'FDO INV IMOB VOTORANTIM LOGISTICA', 0.75, 0.67, 220, 102.2, -1.68, 1.1, 112, 817, -0.53, 'Logística', 'Indeterminado', 7.17, 0.6, '2021-04-05 00:52:50'),
(224, 'VVPR11', 'FDO INV IMOB - V2 PROPERTIES', 0.62, 0.62, 230, 100.26, -0.71, 1, 100.73, 117, -0.17, 'Híbrido', 'Indeterminado', 7.07, 0.59, '2021-04-05 00:52:50'),
(225, 'WPLZ11', 'FDO INV IMOB - FII SHOPPING WEST PLAZA', 0.1, 0.15, 110, 105.13, -3.5, 0.62, 64.9, 22, 0.95, 'Shoppings', 'Indeterminado', 1, 0.08, '2021-04-05 00:52:50'),
(226, 'WTSP11B', 'FDO INV IMOB - OURINVEST RE I', 0.41, 0.21, 79, 79.78, -1.43, 0.62, 49.8, 1, -2.05, 'Híbrido', 'Indeterminado', 4.14, 0.34, '2021-04-05 00:52:50'),
(227, 'XPCI11', 'XP CREDITO IMOBILIÁRIO - FDO INV IMOB', 0.9, 0.94, 640, 97.31, 1.57, 1, 96.94, 36358, 0.77, 'Outros', 'Indeterminado', 8.21, 0.68, '2021-04-05 00:52:50'),
(228, 'XPCM11', 'XP CORPORATE MACAÉ FDO INV IMOB - FII', 0.38, 0.94, 180, 73.35, 0.44, 0.54, 39.95, 8184, -1.19, 'Lajes Corporativas', 'Indeterminado', 24.68, 2.06, '2021-04-05 00:52:50'),
(229, 'XPHT11', 'XP HOTÉIS - FDO INV IMOB - FII', 0.34, 0.4, 330, 87.04, -17.94, 0.99, 86, 3221, -0.22, 'Hotel', 'Indeterminado', 6.33, 0.53, '2021-04-05 00:52:50'),
(230, 'XPIN11', 'XP INDUSTRIAL FDO INV IMOB - FII', 0.62, 0.55, 730, 110.7, -2.11, 1, 111, 17188, 0.27, 'Outros', 'Indeterminado', 6.56, 0.55, '2021-04-05 00:52:50'),
(231, 'XPLG11', 'XP LOG FDO INV IMOB - FII', 0.59, 0.51, 3, 109.94, -3.1, 1.05, 115.95, 43371, -0.2, 'Logística', 'Indeterminado', 5.95, 0.5, '2021-04-05 00:52:50'),
(232, 'XPML11', 'XP MALLS FDO INV IMOB FII', 0.25, 0.24, 2, 112.11, -7.17, 0.95, 106.7, 41639, 0.95, 'Shoppings', 'Indeterminado', 3.1, 0.26, '2021-04-05 00:52:50'),
(233, 'XPPR11', 'XP PROPERTIES FDO. INV. IMOB.', 0.48, 0.7, 640, 87.55, -2.17, 0.77, 67.81, 25148, -1.01, 'Outros', 'Indeterminado', 11.41, 0.95, '2021-04-05 00:52:51'),
(234, 'XPSF11', 'XP SELECTION FDO DE FUNDOS INV IMOB - FII', 0.73, 0.75, 430, 99.25, 0.22, 0.97, 95.85, 13942, -1.06, 'Outros', 'Indeterminado', 9.03, 0.75, '2021-04-05 00:52:51'),
(235, 'XTED11', 'TRX EDIFÍCIOS CORPORATIVOS FDO INV IMOB - FII', 0, 0, 26, 14.26, 1.1, 0.48, 6.89, 201, -0.58, 'Lajes Corporativas', 'Indeterminado', 0, 0, '2021-04-05 00:52:51'),
(236, 'YCHY11', 'YAGUARA CAPITAL HIGH YIELD FDO INV IMOB', 10.24, 1.94, 23, 989.04, -6.48, 1.01, 0, 65, 0, 'Outros', 'Indeterminado', 12.69, 1.06, '2021-04-05 00:52:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fiis`
--
ALTER TABLE `fiis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fiis`
--
ALTER TABLE `fiis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
