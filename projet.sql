-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 29 mars 2021 à 01:14
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `pseudoAdmin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mailAdmin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateNaissanceAdmin` date NOT NULL,
  `idProduit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'clé etrangère de idProduit',
  PRIMARY KEY (`idAdmin`),
  KEY `idProduit` (`idProduit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `pseudoClient` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mailClient` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateNaissanceClient` date NOT NULL,
  `ageClient` int(11) NOT NULL,
  `numRue` int(11) DEFAULT NULL,
  `rue` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codePostal` int(5) DEFAULT NULL,
  `ville` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icone` text COLLATE utf8_unicode_ci NOT NULL,
  `sexe` set('F','H') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

DROP TABLE IF EXISTS `jeu`;
CREATE TABLE IF NOT EXISTS `jeu` (
  `nomJeu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateSortie` date NOT NULL,
  `typeJeu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nbJoueurs` int(11) NOT NULL,
  PRIMARY KEY (`nomJeu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `idProduit` int(11) NOT NULL AUTO_INCREMENT,
  `disponibilite` tinyint(1) NOT NULL,
  `nomProduit` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` blob,
  `enchere` double NOT NULL,
  `dateVente` date DEFAULT NULL,
  PRIMARY KEY (`idProduit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `titreV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `duree` time NOT NULL,
  `producteur` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monteur` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miniature` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`titreV`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
