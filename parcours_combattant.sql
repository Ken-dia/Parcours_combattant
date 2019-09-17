-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 17 Septembre 2019 à 13:42
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.22-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `parcours_combattant`
--

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `idNiveau` int(11) NOT NULL,
  `nomNiveau` varchar(100) NOT NULL,
  `bonus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`idNiveau`, `nomNiveau`, `bonus`) VALUES
(1, 'Facile', 0),
(2, 'Moyen', 1),
(3, 'Difficile', 2);

-- --------------------------------------------------------

--
-- Structure de la table `obstacle`
--

CREATE TABLE `obstacle` (
  `idObstacle` int(11) NOT NULL,
  `nomObstacle` varchar(100) NOT NULL,
  `noteMinimale` int(11) NOT NULL,
  `idNiveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `obstacle`
--

INSERT INTO `obstacle` (`idObstacle`, `nomObstacle`, `noteMinimale`, `idNiveau`) VALUES
(1, 'Echelle de corde', 13, 1),
(2, 'Ramper', 13, 1),
(3, 'Gué', 13, 1),
(4, 'Petit mur', 11, 2),
(5, 'Poutre Horizontale', 11, 2),
(6, 'Fosse', 10, 3),
(7, 'Mur d\'escalade', 10, 3),
(8, 'Mur d\'assaut', 10, 3),
(9, 'Espallier', 13, 1),
(10, '3 Chicanes', 10, 3),
(11, 'Banquette et fossé', 11, 2),
(12, 'Réseau emjambés', 13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `parcours`
--

CREATE TABLE `parcours` (
  `idParcours` int(11) NOT NULL,
  `nomParcours` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `parcours`
--

INSERT INTO `parcours` (`idParcours`, `nomParcours`) VALUES
(1, 'Parcours1'),
(2, 'Parcours2');

-- --------------------------------------------------------

--
-- Structure de la table `passer`
--

CREATE TABLE `passer` (
  `matricule` varchar(50) NOT NULL,
  `idObstacle` int(11) NOT NULL,
  `idParcours` int(11) NOT NULL,
  `matricule_instructeur` varchar(50) NOT NULL,
  `datePassage` date NOT NULL,
  `tempsPassage` int(11) NOT NULL,
  `notePassage` int(11) NOT NULL,
  `noteFinale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `passer`
--

INSERT INTO `passer` (`matricule`, `idObstacle`, `idParcours`, `matricule_instructeur`, `datePassage`, `tempsPassage`, `notePassage`, `noteFinale`) VALUES
('MAT-001', 1, 1, 'MAT-008', '2019-08-05', 120, 16, 16),
('MAT-001', 2, 1, 'MAT-008', '2019-08-05', 260, 14, 14),
('MAT-001', 2, 2, 'MAT-010', '2019-09-25', 1200, 17, 17),
('MAT-001', 3, 2, 'MAT-010', '2019-09-25', 520, 15, 15),
('MAT-001', 4, 1, 'MAT-006', '2019-08-05', 820, 13, 14),
('MAT-001', 5, 2, 'MAT-010', '2019-09-25', 8200, 14, 15),
('MAT-001', 6, 1, 'MAT-006', '2019-08-05', 962, 10, 12),
('MAT-001', 8, 1, 'MAT-006', '2019-08-05', 620, 9, 11),
('MAT-001', 10, 1, 'MAT-010', '2019-08-05', 800, 11, 13),
('MAT-001', 10, 2, 'MAT-010', '2019-09-25', 820, 10, 12),
('MAT-001', 12, 2, 'MAT-010', '2019-09-25', 560, 14, 14),
('MAT-002', 1, 1, 'MAT-010', '2019-08-05', 152, 14, 14),
('MAT-002', 2, 1, 'MAT-008', '2019-08-05', 120, 12, 0),
('MAT-002', 4, 1, 'MAT-006', '2019-08-05', 623, 12, 13),
('MAT-002', 6, 1, 'MAT-008', '2019-08-05', 950, 9, 11),
('MAT-002', 8, 1, 'MAT-008', '2019-08-05', 1250, 5, 0),
('MAT-002', 10, 1, 'MAT-008', '2019-08-05', 4500, 12, 14),
('MAT-003', 1, 1, 'MAT-006', '2019-08-05', 120, 13, 0),
('MAT-003', 2, 1, 'MAT-008', '2019-08-05', 520, 16, 16),
('MAT-003', 4, 1, 'MAT-008', '2019-08-05', 520, 12, 13),
('MAT-003', 6, 1, 'MAT-008', '2019-08-05', 962, 10, 12),
('MAT-003', 8, 1, 'MAT-008', '2019-08-05', 620, 7, 0),
('MAT-003', 10, 1, 'MAT-008', '2019-08-05', 800, 6, 0),
('MAT-004', 2, 2, 'MAT-008', '2019-09-25', 1520, 12, 0),
('MAT-004', 3, 2, 'MAT-008', '2019-09-25', 960, 15, 15),
('MAT-004', 5, 2, 'MAT-008', '2019-09-25', 1200, 13, 14),
('MAT-004', 10, 2, 'MAT-008', '2019-09-25', 5890, 6, 0),
('MAT-004', 12, 2, 'MAT-008', '2019-09-25', 623, 12, 0),
('MAT-005', 1, 1, 'MAT-006', '2019-08-05', 152, 12, 0),
('MAT-005', 2, 1, 'MAT-006', '2019-08-05', 120, 10, 0),
('MAT-005', 4, 1, 'MAT-006', '2019-08-05', 623, 10, 0),
('MAT-005', 6, 1, 'MAT-006', '2019-08-05', 950, 6, 0),
('MAT-005', 8, 1, 'MAT-006', '2019-08-05', 1250, 5, 0),
('MAT-005', 10, 1, 'MAT-006', '2019-08-05', 4500, 8, 0),
('MAT-007', 2, 2, 'MAT-010', '2019-09-25', 698, 12, 0),
('MAT-007', 3, 2, 'MAT-010', '2019-09-25', 4500, 13, 0),
('MAT-007', 5, 2, 'MAT-010', '2019-09-25', 690, 10, 0),
('MAT-007', 10, 2, 'MAT-010', '2019-09-25', 1530, 8, 0),
('MAT-007', 12, 2, 'MAT-010', '2019-09-25', 1520, 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `nomRole` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`idRole`, `nomRole`) VALUES
(1, 'Soldat'),
(2, 'Instructeur');

-- --------------------------------------------------------

--
-- Structure de la table `soldat`
--

CREATE TABLE `soldat` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `idRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `soldat`
--

INSERT INTO `soldat` (`matricule`, `nom`, `prenom`, `email`, `grade`, `idRole`) VALUES
('MAT-001', 'Diallo', 'Moussa', 'diallomoussa@gmail.com', 'Caporale', 1),
('MAT-002', 'Diagne', 'Ibrahima', 'diagneibra@gmail.com', 'Commandat', 1),
('MAT-003', 'Fall', 'Bamba', 'falloubamba@hotmail.com', 'soldat recru', 1),
('MAT-004', 'Ndiongue', 'Khalidou', 'ndiongue20@gmail.com', 'soldat confirmé', 1),
('MAT-005', 'Pam', 'Issa', 'issapam@gmail.com', 'Caporale', 1),
('MAT-006', 'Dia', 'Ibrahima', 'diaibou@gmail.com', 'Général chef', 2),
('MAT-007', 'Ba', 'Amadou', 'baama@hotmail.com', 'soldat recru', 1),
('MAT-008', 'Dia', 'Hamidou', 'diahamidou10@gamil.com', 'Commandat chef', 2),
('MAT-009', 'Diop', 'Mamadou', 'diop12@yahoo.fr', 'soldat confirmé', 1),
('MAT-010', 'Ndiaye', 'Moctar', 'mineytey@gmail.com', 'General ', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`idNiveau`);

--
-- Index pour la table `obstacle`
--
ALTER TABLE `obstacle`
  ADD PRIMARY KEY (`idObstacle`),
  ADD KEY `obstacle_niveau_FK` (`idNiveau`);

--
-- Index pour la table `parcours`
--
ALTER TABLE `parcours`
  ADD PRIMARY KEY (`idParcours`);

--
-- Index pour la table `passer`
--
ALTER TABLE `passer`
  ADD PRIMARY KEY (`matricule`,`idObstacle`,`idParcours`,`matricule_instructeur`),
  ADD KEY `passer_obstacle0_FK` (`idObstacle`),
  ADD KEY `passer_parcours1_FK` (`idParcours`),
  ADD KEY `passer_soldat2_FK` (`matricule_instructeur`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`);

--
-- Index pour la table `soldat`
--
ALTER TABLE `soldat`
  ADD PRIMARY KEY (`matricule`),
  ADD KEY `soldat_role_FK` (`idRole`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `idNiveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `obstacle`
--
ALTER TABLE `obstacle`
  MODIFY `idObstacle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `parcours`
--
ALTER TABLE `parcours`
  MODIFY `idParcours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `obstacle`
--
ALTER TABLE `obstacle`
  ADD CONSTRAINT `obstacle_niveau_FK` FOREIGN KEY (`idNiveau`) REFERENCES `niveau` (`idNiveau`);

--
-- Contraintes pour la table `passer`
--
ALTER TABLE `passer`
  ADD CONSTRAINT `passer_obstacle0_FK` FOREIGN KEY (`idObstacle`) REFERENCES `obstacle` (`idObstacle`),
  ADD CONSTRAINT `passer_parcours1_FK` FOREIGN KEY (`idParcours`) REFERENCES `parcours` (`idParcours`),
  ADD CONSTRAINT `passer_soldat2_FK` FOREIGN KEY (`matricule_instructeur`) REFERENCES `soldat` (`matricule`),
  ADD CONSTRAINT `passer_soldat_FK` FOREIGN KEY (`matricule`) REFERENCES `soldat` (`matricule`);

--
-- Contraintes pour la table `soldat`
--
ALTER TABLE `soldat`
  ADD CONSTRAINT `soldat_role_FK` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
