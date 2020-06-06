-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 06 juin 2020 à 18:17
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `project`
--

--
-- Déchargement des données de la table `groupetravail`
--

INSERT INTO `groupetravail` (`ID`, `LIBELLE`) VALUES
(1, '5005'),
(2, '5006'),
(3, '5007'),
(4, '5008'),
(5, '5009'),
(6, '803'),
(7, '201');

--
-- Déchargement des données de la table `motifabsence`
--

INSERT INTO `motifabsence` (`ID`, `LIBELLE`) VALUES
(1, 'Administratif'),
(2, 'Certificat médical'),
(3, 'Maladie'),
(4, 'Mise a pied'),
(5, 'Personnel'),
(6, 'Congé maternité'),
(7, 'Congé paternité'),
(8, 'Décès père'),
(9, 'Décès mère'),
(10, 'Décès frére'),
(11, 'Décès soeur'),
(12, 'Décès beau père'),
(13, 'Décès belle mère'),
(14, 'Décès beau frère'),
(15, 'Décès belle soeur'),
(16, 'Décès proche'),
(17, 'Décès grand père'),
(18, 'Décès grande mère'),
(19, 'Décès conjoint'),
(20, 'Décès beau grand père'),
(21, 'Fiançailles'),
(22, 'Décès belle grande mère'),
(23, 'Fiançailles'),
(24, 'Congé mariage'),
(25, 'Circoncision'),
(26, 'Opération chirurgicale du conjoint'),
(27, 'Opération chirurgicale enfant'),
(28, 'Transport'),
(29, 'Maladie enfant'),
(30, 'Maladie conjoint'),
(31, 'Sous charge');

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`ID`, `ADRESSE`, `CIN`, `DATEEMBAUCHE`, `DATENAISSANCE`, `MATRICULE`, `NBRENFANT`, `NOM`, `NOMCONJOINT`, `NUMEROCNSS`, `NUMEROMUTUEL`, `PRENOM`, `TEL`, `GROUPETRAVAIL_ID`, `PROFESSION_ID`, `SECTIONTRAVAIL_ID`, `SITUATIONFAMILLIALE_ID`) VALUES
(1, 'Hay lahrech bloc 14-Marrakech', 'EE23564', '1993-01-09', '1976-01-12', '1', 0, 'CHBANI', 'sans', '123456789', '1', 'HALIMA', '0631254896', 1, 49, 102, 151),
(2, 'Daoudiate n 13-Marrakech', 'EA123456', '1989-06-05', '1977-06-05', '2', 3, 'BENNANI', 'FILALI NAJIA', '456123789', '2', 'AHMED', '0645442255', 2, 35, 101, 152),
(3, 'Lamcella n13 syba -Marrakech', 'EH123789', '2016-01-02', '1993-09-08', '3', 5, 'FANANE', '', '789456321', '3', 'KAOUTAR', '0758692514', 4, 37, 103, 154),
(4, 'Targa n 23 -Marrakech', 'EE56421', '1999-09-11', '1961-05-09', '4', 0, 'FATHI', '', '121364789', '4', 'AMINA', '0562349875', 6, 38, 102, 151),
(5, 'Hay lbahya 32 -Marrakech', 'EE585376', '2015-05-06', '1998-03-04', NULL, 0, 'KOUDI', '', '121458967', '5', 'FATIMA EZZAHRA', '0623512485', 6, NULL, 4, 1);

--
-- Déchargement des données de la table `profession`
--

INSERT INTO `profession` (`ID`, `LIBELLE`) VALUES
(34, 'Directrice RH'),
(35, 'Agent de Serigraphie'),
(36, 'Agent de picot'),
(37, 'Assistante RH'),
(38, 'Monitrice de groupe'),
(39, 'Chef d\'atelier'),
(40, 'Opératrice de groupe'),
(41, 'Chef de groupe'),
(42, 'Agent de saisie'),
(43, 'Responsable Logiciel'),
(44, 'Ingénieur de logistique'),
(45, 'Responsable Logistique'),
(46, 'Responsable d\'informatique'),
(47, 'Informaticien(ne)'),
(48, 'Technicien(ne)'),
(49, 'Agent de méthode'),
(50, 'Mécanicien(ne)');

--
-- Déchargement des données de la table `sectiontravail`
--

INSERT INTO `sectiontravail` (`ID`, `LIBELLE`, `CHEF_ID`) VALUES
(101, 'Serigraphie', 1),
(102, 'Picot', 1),
(103, 'Responsable', 1);

--
-- Déchargement des données de la table `situationfamilliale`
--

INSERT INTO `situationfamilliale` (`ID`, `LIBELLE`) VALUES
(151, 'Célibataire'),
(152, 'Marié(e)'),
(153, 'Veuf(ve)'),
(154, 'Divorcé(e)');

--
-- Déchargement des données de la table `typeabsence`
--

INSERT INTO `typeabsence` (`ID`, `LIBELLE`) VALUES
(51, 'Absence justifiée'),
(52, 'Absence non justifiée'),
(53, 'Sortie autorisée'),
(54, 'Sortie non autorisée'),
(55, 'Sous charge'),
(56, 'Discipline'),
(57, 'Autorisation'),
(58, 'Maladie');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
