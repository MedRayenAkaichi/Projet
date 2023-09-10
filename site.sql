-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2023 at 08:35 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comptes`
--

DROP TABLE IF EXISTS `comptes`;
CREATE TABLE IF NOT EXISTS `comptes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_compte` int NOT NULL,
  `nom_compte` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solde` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comptes`
--

INSERT INTO `comptes` (`id`, `num_compte`, `nom_compte`, `solde`) VALUES
(1, 45, 'A', 93290);

-- --------------------------------------------------------

--
-- Table structure for table `conge`
--

DROP TABLE IF EXISTS `conge`;
CREATE TABLE IF NOT EXISTS `conge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employe_id` int NOT NULL,
  `duree` int NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2ED893481B65292` (`employe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conge`
--

INSERT INTO `conge` (`id`, `employe_id`, `duree`, `date_debut`, `date_fin`) VALUES
(7, 9, 8, '2023-08-24', '2023-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230720190300', '2023-07-20 19:05:33', 41),
('DoctrineMigrations\\Version20230721135545', '2023-07-21 13:56:05', 75),
('DoctrineMigrations\\Version20230722083813', '2023-07-22 08:38:48', 50),
('DoctrineMigrations\\Version20230722084909', '2023-07-22 08:50:50', 13),
('DoctrineMigrations\\Version20230722102417', '2023-07-22 10:24:32', 70),
('DoctrineMigrations\\Version20230722164233', '2023-07-22 16:42:44', 64),
('DoctrineMigrations\\Version20230722171747', '2023-07-22 17:18:15', 56),
('DoctrineMigrations\\Version20230723161450', '2023-07-23 16:16:05', 68),
('DoctrineMigrations\\Version20230724164054', '2023-07-24 16:44:12', 22),
('DoctrineMigrations\\Version20230730101422', '2023-07-30 10:14:39', 88),
('DoctrineMigrations\\Version20230730103031', '2023-07-30 10:30:39', 113),
('DoctrineMigrations\\Version20230731134420', '2023-07-31 13:44:32', 85),
('DoctrineMigrations\\Version20230731134924', '2023-07-31 13:49:31', 23),
('DoctrineMigrations\\Version20230731135056', '2023-07-31 13:51:00', 20),
('DoctrineMigrations\\Version20230731141951', '2023-07-31 14:19:57', 77),
('DoctrineMigrations\\Version20230803074834', '2023-08-03 07:48:44', 65),
('DoctrineMigrations\\Version20230803075156', '2023-08-03 07:52:06', 21),
('DoctrineMigrations\\Version20230803100948', '2023-08-03 10:09:55', 71),
('DoctrineMigrations\\Version20230803144403', '2023-08-03 14:44:14', 70),
('DoctrineMigrations\\Version20230804131731', '2023-08-04 13:17:41', 64),
('DoctrineMigrations\\Version20230804132107', '2023-08-04 13:21:31', 73),
('DoctrineMigrations\\Version20230804160717', '2023-08-04 16:07:28', 158),
('DoctrineMigrations\\Version20230804172604', '2023-08-04 17:26:12', 158),
('DoctrineMigrations\\Version20230804192006', '2023-08-09 10:21:01', 111),
('DoctrineMigrations\\Version20230817154934', '2023-08-17 15:49:38', 100),
('DoctrineMigrations\\Version20230817160346', '2023-08-17 16:03:52', 28),
('DoctrineMigrations\\Version20230822152607', '2023-08-22 15:26:17', 143),
('DoctrineMigrations\\Version20230826090237', '2023-08-26 09:02:45', 67),
('DoctrineMigrations\\Version20230826090337', '2023-08-26 09:03:40', 70);

-- --------------------------------------------------------

--
-- Table structure for table `facture_achat`
--

DROP TABLE IF EXISTS `facture_achat`;
CREATE TABLE IF NOT EXISTS `facture_achat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_f_id` int NOT NULL,
  `produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant` double NOT NULL,
  `date` date NOT NULL,
  `id_c_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B49D0CE12D2977E3` (`id_f_id`),
  KEY `IDX_B49D0CE11AF787D1` (`id_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facture_achat`
--

INSERT INTO `facture_achat` (`id`, `id_f_id`, `produit`, `montant`, `date`, `id_c_id`) VALUES
(9, 2, 'tele', 140, '2018-04-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `facture_vente`
--

DROP TABLE IF EXISTS `facture_vente`;
CREATE TABLE IF NOT EXISTS `facture_vente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_v` date NOT NULL,
  `montant` double NOT NULL,
  `produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_c_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1ABEA2FB1AF787D1` (`id_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facture_vente`
--

INSERT INTO `facture_vente` (`id`, `nom_c`, `date_v`, `montant`, `produit`, `id_c_id`) VALUES
(3, 'mourad', '2018-01-01', 1000, 'smartwatch', 1),
(4, 'sami', '2018-01-01', 4000, 'ventilateur', 1),
(5, 'sami', '2018-01-01', 2000, 'ventilateur', 1),
(6, 'sami', '2018-01-01', 10000, 'ventilateur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_f` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_f` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_f` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom_f`, `adresse_f`, `email`, `num_f`) VALUES
(1, 'fares', 'ariana', 'ahmed@mail.com', '123456789'),
(2, 'ahmed', 'ariana', 'ahmed@mail.com', '123456789'),
(3, 'sami', 'gabes', 'sami@gmail.com', '123654');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
CREATE TABLE IF NOT EXISTS `paiement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_f_a_id` int DEFAULT NULL,
  `id_f_v_id` int DEFAULT NULL,
  `id_compte_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1DC7A1EE9812C57` (`id_f_a_id`),
  UNIQUE KEY `UNIQ_B1DC7A1E244F4371` (`id_f_v_id`),
  KEY `IDX_B1DC7A1E72F0DA07` (`id_compte_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pargen`
--

DROP TABLE IF EXISTS `pargen`;
CREATE TABLE IF NOT EXISTS `pargen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ns` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pva` decimal(5,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pargen`
--

INSERT INTO `pargen` (`id`, `ns`, `nt`, `mail`, `adresse`, `nif`, `pva`, `image`) VALUES
(2, '123', '123456', 'rayen@gmail.com', 'el ghazela', '147', '14.00', '64bcfb35027ef.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_compte_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montant` double NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_723705D172F0DA07` (`id_compte_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_compte_id`, `type`, `montant`, `date`, `description`) VALUES
(1, 1, 'depense', 120, '2023-08-04', 'location'),
(2, 1, 'depense', 170, '2023-08-04', 'location'),
(3, 1, 'depense', 140, '2023-08-04', 'aa'),
(4, 1, 'revenu', 120, '2023-08-08', 'bb');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_utilisateur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_utilisateur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jourrestants` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `type_utilisateur`, `nom`, `nom_utilisateur`, `password`, `num`, `email`, `jourrestants`) VALUES
(8, 'directeur', 'sd', 'akaichi', '456', '741258', 's@gmail.com', 7),
(9, 'directeur', 'aa', 'bd', '123', 'aaaaaaaaa', 'a@gmail.com', 14),
(10, 'employé', 'rayen', NULL, NULL, '741258', 's@gmail.com', 30);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conge`
--
ALTER TABLE `conge`
  ADD CONSTRAINT `FK_2ED893481B65292` FOREIGN KEY (`employe_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `facture_achat`
--
ALTER TABLE `facture_achat`
  ADD CONSTRAINT `FK_B49D0CE11AF787D1` FOREIGN KEY (`id_c_id`) REFERENCES `comptes` (`id`),
  ADD CONSTRAINT `FK_B49D0CE12D2977E3` FOREIGN KEY (`id_f_id`) REFERENCES `fournisseur` (`id`);

--
-- Constraints for table `facture_vente`
--
ALTER TABLE `facture_vente`
  ADD CONSTRAINT `FK_1ABEA2FB1AF787D1` FOREIGN KEY (`id_c_id`) REFERENCES `comptes` (`id`);

--
-- Constraints for table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `FK_B1DC7A1E244F4371` FOREIGN KEY (`id_f_v_id`) REFERENCES `facture_vente` (`id`),
  ADD CONSTRAINT `FK_B1DC7A1E72F0DA07` FOREIGN KEY (`id_compte_id`) REFERENCES `comptes` (`id`),
  ADD CONSTRAINT `FK_B1DC7A1EE9812C57` FOREIGN KEY (`id_f_a_id`) REFERENCES `facture_achat` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK_723705D172F0DA07` FOREIGN KEY (`id_compte_id`) REFERENCES `comptes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
