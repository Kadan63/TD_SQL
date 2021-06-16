-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql:3306
-- Généré le : mer. 16 juin 2021 à 05:57
-- Version du serveur :  10.5.5-MariaDB-1:10.5.5+maria~focal
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ShopTonCafe`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `idCategory` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idParent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`idCategory`, `name`, `idParent`) VALUES
(1, 'thé', 0),
(2, 'café', 0),
(3, 'Les cafés de pures Origines', 2),
(4, 'Les cafés de production biologique', 2);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `idCustomer` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`idCustomer`, `name`, `firstname`, `email`) VALUES
(1, 'Pierre', 'DUPONT', 'pierre.dupont@undomaine.com'),
(2, 'Jacques', 'Martin', '');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `idOrder` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `idCustomer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`idOrder`, `date`, `idCustomer`) VALUES
(1, '2021-04-01', 1),
(2, '2021-05-10', 2),
(3, '2021-05-14', 1),
(4, '2021-05-14', 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL COMMENT 'prix pour 100G en cts',
  `pictureFront` varchar(255) NOT NULL,
  `pictureBack` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`idProduct`, `idCategory`, `title`, `description`, `price`, `pictureFront`, `pictureBack`) VALUES
(1, 3, 'Rwanda Bourbon', 'Puissant et chanu', 280, '', ''),
(2, 3, 'Costa Rica Tarrazu', 'Goût aromatique , peu acidulé', 280, '', ''),
(3, 3, 'Papouasie Sigri', 'Intense et longueur en bouche', 280, '', ''),
(4, 3, 'Guatemala Antigua', 'Parfumé et expressif', 280, '', ''),
(5, 3, 'Nicaragua Maragogype', 'Doux, blond en tasse', 280, '', ''),
(6, 3, 'Brésil Yellow diamond', 'Fin et expressif', 280, '', ''),
(7, 3, 'Caracoli du cameroun', 'Equilibré et suave', 280, '', ''),
(8, 4, 'Pérou El Palomar Cerise ou Geisha', 'Intense et equilibré', 280, '', ''),
(9, 4, 'Equateur', 'Suave et expressif', 280, '', ''),
(10, 4, 'Colombie sierra Nevada', 'Doux et parfumé', 280, '', ''),
(11, 4, 'Indonésie Sumatra', 'Subtil et raffiné', 280, '', ''),
(12, 3, 'Rwanda Bourbon', 'Puissant et chanu', 280, '', ''),
(13, 3, 'Costa Rica Tarrazu', 'Goût aromatique , peu acidulé', 280, '', ''),
(14, 3, 'Papouasie Sigri', 'Intense et longueur en bouche', 280, '', ''),
(15, 3, 'Guatemala Antigua', 'Parfumé et expressif', 280, '', ''),
(16, 3, 'Nicaragua Maragogype', 'Doux, blond en tasse', 280, '', ''),
(17, 3, 'Brésil Yellow diamond', 'Fin et expressif', 280, '', ''),
(18, 3, 'Caracoli du cameroun', 'Equilibré et suave', 280, '', ''),
(19, 4, 'Pérou El Palomar Cerise ou Geisha', 'Intense et equilibré', 280, '', ''),
(20, 4, 'Equateur', 'Suave et expressif', 280, '', ''),
(21, 4, 'Colombie sierra Nevada', 'Doux et parfumé', 280, '', ''),
(22, 4, 'Indonésie Sumatra', 'Subtil et raffiné', 280, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `product_order`
--

CREATE TABLE `product_order` (
  `idProduct` int(11) NOT NULL,
  `idOrder` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_order`
--

INSERT INTO `product_order` (`idProduct`, `idOrder`, `qty`) VALUES
(1, 1, 4),
(2, 1, 3),
(3, 1, 1),
(6, 1, 10),
(1, 2, 1),
(3, 2, 1),
(3, 3, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
