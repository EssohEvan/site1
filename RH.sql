-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 15 Décembre 2022 à 10:33
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `RH`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `No_Emp` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `salaire` int(11) NOT NULL,
  `TypeContrat` varchar(50) NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` varchar(20) NOT NULL,
  `Date_Embauche` int(11) NOT NULL,
  `Date_de_naissance` int(11) NOT NULL,
  `NoSrv` int(11) NOT NULL,
  PRIMARY KEY (`No_Emp`),
  KEY `NoSrv` (`NoSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`No_Emp`, `Nom`, `Prenom`, `sexe`, `salaire`, `TypeContrat`, `Fonction`, `Site`, `Date_Embauche`, `Date_de_naissance`, `NoSrv`) VALUES
(0, '', '', '', 0, '', '', '', 0, 0, 0),
(1125, 'Yapo', 'Essoh Evan', 'Masculin', 2, 'CDI', 'Managers', 'Paris', 24, 24, 11254588),
(1126, 'Rolendo', 'Mergueze julian', 'Masculin', 2, 'CDD', 'Vendeur', 'Paris', 30, 26, 11254589);

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

CREATE TABLE IF NOT EXISTS `intervention` (
  `Num_Interv` int(11) NOT NULL,
  `No_Projet` int(11) NOT NULL,
  `No_Employe` int(11) NOT NULL,
  `Nmb_Heures` int(11) NOT NULL,
  PRIMARY KEY (`Num_Interv`),
  KEY `No_Projet` (`No_Projet`,`No_Employe`),
  KEY `No_Employe` (`No_Employe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervention`
--

INSERT INTO `intervention` (`Num_Interv`, `No_Projet`, `No_Employe`, `Nmb_Heures`) VALUES
(12, 530, 1126, 72),
(15, 680, 1125, 100);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `No_Projet` int(11) NOT NULL,
  `LibelleProjet` varchar(20) NOT NULL,
  `No_Service` int(11) NOT NULL,
  PRIMARY KEY (`No_Projet`),
  KEY `No_Service` (`No_Service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`No_Projet`, `LibelleProjet`, `No_Service`) VALUES
(530, 'SAV', 11254588),
(680, 'trouver de nouvelle ', 11254589);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `No_Service` int(11) NOT NULL,
  `Nom_service` varchar(20) NOT NULL,
  PRIMARY KEY (`No_Service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`No_Service`, `Nom_service`) VALUES
(11254588, 'Renouvellement '),
(11254589, 'SAV');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD CONSTRAINT `intervention_ibfk_1` FOREIGN KEY (`No_Employe`) REFERENCES `employe` (`No_Emp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_2` FOREIGN KEY (`No_Service`) REFERENCES `service` (`No_Service`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`No_Projet`) REFERENCES `intervention` (`No_Projet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`No_Service`) REFERENCES `employe` (`NoSrv`) ON DELETE CASCADE ON UPDATE CASCADE;
