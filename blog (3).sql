-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Lun 17 Juin 2019 à 17:28
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `Author`
--

CREATE TABLE `Author` (
  `Id` tinyint(3) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Author`
--

INSERT INTO `Author` (`Id`, `FirstName`, `LastName`) VALUES
(1, 'John', 'Doe'),
(2, 'Jonh', 'Locke'),
(3, 'Amadeus', 'Mozart'),
(4, 'Lazlo', 'Despues'),
(5, 'Mamadou', 'Chang');

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `Id` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Category`
--

INSERT INTO `Category` (`Id`, `Name`) VALUES
(2, 'Jeux-Vidéos'),
(1, 'Voyages');

-- --------------------------------------------------------

--
-- Structure de la table `Comment`
--

CREATE TABLE `Comment` (
  `Id` mediumint(8) UNSIGNED NOT NULL,
  `NickName` varchar(30) DEFAULT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Comment`
--

INSERT INTO `Comment` (`Id`, `NickName`, `Contents`, `CreationTimestamp`, `Post_Id`) VALUES
(1, 'ngh', 'hgfh', '2019-06-13 09:53:44', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Images`
--

CREATE TABLE `Images` (
  `Nom` text NOT NULL,
  `Category` text NOT NULL,
  `local_adress` text NOT NULL,
  `online_adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Images`
--

INSERT INTO `Images` (`Nom`, `Category`, `local_adress`, `online_adress`) VALUES
('Affiche de l\'E3 2019', 'Jeux-Vidéo', '', 'https://www.realite-virtuelle.com/wp-content/uploads/2019/06/e3-2019-vr-bilan-660x330.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Post`
--

CREATE TABLE `Post` (
  `Id` smallint(5) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Author_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `Category_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Post`
--

INSERT INTO `Post` (`Id`, `Title`, `Contents`, `CreationTimestamp`, `Author_Id`, `Category_Id`, `image`) VALUES
(1, 'La consommation dangeureuse de Bernard Lermite au Pakistan', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores saepe consectetur soluta provident nihil natus modi, error dolor qui aspernatur magni vero, similique odio eaque nemo iure nobis reprehenderit temporibus nostrum minima necessitatibus impedit tenetur dolore hic! Exercitationem tempora blanditiis autem nostrum minima cupiditate sit! Ipsa blanditiis incidunt rerum non velit sapiente provident debitis quasi perspiciatis quidem similique nobis iusto expedita sit, eius ut ad veritatis nesciunt dolor optio odit ea neque voluptatibus. Possimus aliquid quo impedit nobis deserunt id cum, voluptate nihil autem maxime iusto velit. Nulla perspiciatis illo ea, deserunt culpa, quibusdam accusamus esse mollitia commodi excepturi a voluptatibus? Temporibus quia blanditiis cum ullam tenetur doloremque quo, eos quas dolore voluptas! Pariatur, rem quam! Rerum unde ipsum animi, dolorem recusandae explicabo iusto quidem ratione quibusdam id? Voluptatibus accusantium facere corporis atque repellat est? Sequi cumque quia accusantium similique vel, ratione error fuga ipsa laudantium eaque possimus et quis, voluptate nulla nam? Optio ea praesentium labore. Dolores minima laudantium laborum recusandae rerum, perferendis exercitationem veniam nulla dolore architecto et non quae, praesentium explicabo, in perspiciatis nostrum quod! Cum veritatis mollitia laudantium non molestias, voluptatum ea sit atque deserunt sed ullam magnam, magni voluptas velit hic nihil, recusandae vitae libero? Aliquam praesentium a beatae. Impedit ipsa sit saepe magnam dolorum iure! Maiores enim architecto recusandae vero quaerat provident fugit quos magnam quia sequi suscipit quo eligendi excepturi aperiam, in ex laboriosam facilis neque quod magni voluptatum ducimus. Repellendus eaque blanditiis reprehenderit officia suscipit adipisci explicabo ratione labore quasi consequuntur incidunt quae minima cupiditate veritatis dolores dignissimos voluptas, inventore animi necessitatibus aperiam quos distinctio eum iure. Consectetur adipisci quae voluptate ab, aspernatur sint delectus sit alias est iure ipsam, perferendis ipsum ut? Laborum deleniti, dolor quis dignissimos quasi recusandae quas nobis placeat nemo explicabo quidem commodi, odit doloribus itaque similique exercitationem.\r\n', '2019-06-13 00:00:00', 1, 2, ''),
(2, 'E3 2019: ZELDAAAAAAAAAAAAAA!!!!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores saepe consectetur soluta provident nihil natus modi, error dolor qui aspernatur magni vero, similique odio eaque nemo iure nobis reprehenderit temporibus nostrum minima necessitatibus impedit tenetur dolore hic! Exercitationem tempora blanditiis autem nostrum minima cupiditate sit! Ipsa blanditiis incidunt rerum non velit sapiente provident debitis quasi perspiciatis quidem similique nobis iusto expedita sit, eius ut ad veritatis nesciunt dolor optio odit ea neque voluptatibus. Possimus aliquid quo impedit nobis deserunt id cum, voluptate nihil autem maxime iusto velit. Nulla perspiciatis illo ea, deserunt culpa, quibusdam accusamus esse mollitia commodi excepturi a voluptatibus? Temporibus quia blanditiis cum ullam tenetur doloremque quo, eos quas dolore voluptas! Pariatur, rem quam! Rerum unde ipsum animi, dolorem recusandae explicabo iusto quidem ratione quibusdam id? Voluptatibus accusantium facere corporis atque repellat est? Sequi cumque quia accusantium similique vel, ratione error fuga ipsa laudantium eaque possimus et quis, voluptate nulla nam? Optio ea praesentium labore. Dolores minima laudantium laborum recusandae rerum, perferendis exercitationem veniam nulla dolore architecto et non quae, praesentium explicabo, in perspiciatis nostrum quod! Cum veritatis mollitia laudantium non molestias, voluptatum ea sit atque deserunt sed ullam magnam, magni voluptas velit hic nihil, recusandae vitae libero? Aliquam praesentium a beatae. Impedit ipsa sit saepe magnam dolorum iure! Maiores enim architecto recusandae vero quaerat provident fugit quos magnam quia sequi suscipit quo eligendi excepturi aperiam, in ex laboriosam facilis neque quod magni voluptatum ducimus. Repellendus eaque blanditiis reprehenderit officia suscipit adipisci explicabo ratione labore quasi consequuntur incidunt quae minima cupiditate veritatis dolores dignissimos voluptas, inventore animi necessitatibus aperiam quos distinctio eum iure. Consectetur adipisci quae voluptate ab, aspernatur sint delectus sit alias est iure ipsam, perferendis ipsum ut? Laborum deleniti, dolor quis dignissimos quasi recusandae quas nobis placeat nemo explicabo quidem commodi, odit doloribus itaque similique exercitationem.\r\n', '2019-06-13 00:00:00', 1, 2, ''),
(4, 'Metroid: Le Néo-fascisme en oeuvre ?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Explicabo est voluptatem saepe quas provident rerum minus iure nam expedita, sequi culpa alias dicta fugit consectetur molestiae excepturi reiciendis incidunt. Sapiente?\r\n', '2019-06-17 12:38:28', 5, 2, 'SamusLaFemiNazi.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Index pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreationTimestamp` (`CreationTimestamp`),
  ADD KEY `Post_Id` (`Post_Id`);

--
-- Index pour la table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Title` (`Title`),
  ADD KEY `CreationTimestamp` (`CreationTimestamp`),
  ADD KEY `Author_Id` (`Author_Id`),
  ADD KEY `Category_Id` (`Category_Id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Author`
--
ALTER TABLE `Author`
  MODIFY `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `Id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `Post`
--
ALTER TABLE `Post`
  MODIFY `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `Post` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `Author` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `Category` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
