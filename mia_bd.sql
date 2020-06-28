-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 28 juin 2020 à 21:07
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mia bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(1) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `téléphone` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `name`, `email`, `téléphone`) VALUES
(2, 'jaouda', 'jaouda@email.com', 567889034),
(78, 'Milka', 'Milka@gmail.com', 566748930),
(8, 'lina', 'lina@gmail.com', 566748989),
(81, 'slaoui', 'slaoui@gmail.com', 560748989),
(11, 'safia', 'safia@email.com', 5678889),
(13, 'Alaya', 'Alaya@gmail.com', 5678324);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(1) NOT NULL,
  `produit` text NOT NULL,
  `fournisseur` text NOT NULL,
  `numrayon` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `produit`, `fournisseur`, `numrayon`) VALUES
(9, 'crème', 'lina', 7),
(2, 'sandales', 'slaoui', 44),
(6, 'miel', 'safia', 89),
(4, 'botte', 'Alaya', 66),
(12, 'chocolat', 'Milka', 90),
(19, 'lait', 'jaouda', 7);

-- --------------------------------------------------------

--
-- Structure de la table `rayon`
--

CREATE TABLE `rayon` (
  `id` int(1) NOT NULL,
  `produit` text NOT NULL,
  `catégorie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rayon`
--

INSERT INTO `rayon` (`id`, `produit`, `catégorie`) VALUES
(14, 'chocolat', 'biscuiterie'),
(15, 'miel', 'sucrerie'),
(16, 'sandales', 'chaussures'),
(17, 'crème', 'beauté'),
(18, 'botte', 'chaussures'),
(20, 'lait', 'laiterie');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
