-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 08 Décembre 2022 à 11:02
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_de_voiture_2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `Code_client` varchar(20) NOT NULL,
  `Nom_Prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `proffesion` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`Code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`Code_client`, `Nom_Prenom`, `date_naissance`, `proffesion`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('a27', 'Yapo Essoh', '0000-00-00', 'codeur', 33, '139 rue de l''ouest', 75014, 'paris', 'yapo.essoh001@gmail.'),
('a28', 'Rosvelt Maclawoers', '0000-00-00', 'etudiant', 33, '2 rue de la bourssie', 75012, 'paris', 'lalalaa.12@gmail.com'),
('a29', 'Rosvelt Maclawoers', '0000-00-00', 'etudiant', 33, '2 rue de la bourssie', 75012, 'paris', 'lalalaa.12@gmail.com'),
('a30', 'Yapo Essoh', '0000-00-00', 'codeur', 33, '139 rue de l''ouest', 75014, 'paris', 'yapo.essoh001@gmail.');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `code_client` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_client` (`code_client`,`immatriculation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id_location`, `duree_location`, `date_location`, `prix_location`, `code_client`, `immatriculation`) VALUES
('L520', 72, '2022-12-08', 850, 'a30', 'B512AF50'),
('L521', 72, '2022-12-07', 850, 'a29', 'B412AU50');

-- --------------------------------------------------------

--
-- Structure de la table `reparation`
--

CREATE TABLE IF NOT EXISTS `reparation` (
  `num_reparation` int(11) NOT NULL,
  `date_reparation` varchar(100) NOT NULL,
  `duree_reparation` varchar(100) NOT NULL,
  `cout_reparation` varchar(255) NOT NULL,
  `responsable_rep` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  PRIMARY KEY (`num_reparation`),
  KEY `immatriculation` (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reparation`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(10) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `prix_achat` varchar(255) NOT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('B412AU50', 'Mercedes', 'CLS', 320, 'diezel', 'noir', 5, 4, '850', 'très bonne état'),
('B512AF50', 'BMW', 'X4', 180, 'diezel', 'rouge', 5, 4, '750', 'bonne etat');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`code_client`) REFERENCES `clients` (`Code_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reparation`
--
ALTER TABLE `reparation`
  ADD CONSTRAINT `reparation_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
