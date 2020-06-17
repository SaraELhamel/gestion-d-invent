-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 17 juin 2020 à 21:00
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
  ` fournisseur` text NOT NULL,
  `produit` text NOT NULL,
  `numrayon` int(1) NOT NULL,
  `nombrproduit` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, ` fournisseur`, `produit`, `numrayon`, `nombrproduit`) VALUES
(2, 'jaouda', 'yagought', 12, 67);

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
(3, 'lait', 'jaouda', 23),
(5, 'poisson', 'marssa', 21),
(9, 'framboise', 'jirla', 30),
(2, 'sandales', 'slaoui', 44),
(6, 'miel', 'safia', 89);

-- --------------------------------------------------------

--
-- Structure de la table `rayon`
--

CREATE TABLE `rayon` (
  `id` int(1) NOT NULL,
  `produit` text NOT NULL,
  `fournisseur` text NOT NULL,
  `numrayon` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rayon`
--

INSERT INTO `rayon` (`id`, `produit`, `fournisseur`, `numrayon`) VALUES
(3, 'fromage', 'Milka', 23),
(45, 'beurre', 'Jibal', 12),
(12, 'yagought', 'jaouda', 16),
(2, 'jupe', 'marwa', 23);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
