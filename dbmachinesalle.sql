-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 23 oct. 2023 à 14:59
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbmachinesalle`
--

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE `machine` (
  `id` int(11) NOT NULL,
  `marque` varchar(255) DEFAULT NULL,
  `prix` double NOT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `salle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `machine`
--

INSERT INTO `machine` (`id`, `marque`, `prix`, `ref`, `salle_id`) VALUES
(1, 'Hp', 8000, 'Hp', 2),
(2, 'Lenovo', 7000, 'lenovo', 1),
(3, 'dell', 6000, 'dell', 1);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `code`) VALUES
(1, 'B1'),
(2, 'B2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_owxco7mqj6p36chla0rr759bs` (`salle_id`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `FK_owxco7mqj6p36chla0rr759bs` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
