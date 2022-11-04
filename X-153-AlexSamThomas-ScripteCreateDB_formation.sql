-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db:3306
-- Généré le : jeu. 03 nov. 2022 à 20:49
-- Version du serveur : 8.0.30
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_formation`
--

DROP DATABASE IF EXISTS db_formation;

create database db_formation;
use db_formation;

-- --------------------------------------------------------

--
-- Structure de la table `t_class`
--

CREATE TABLE `t_class` (
  `idClass` binary(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fkPerson` binary(16) NOT NULL,
  `fkFormation` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_formationPlan`
--

CREATE TABLE `t_formationPlan` (
  `idFormation` binary(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `startYear` date NOT NULL,
  `endYear` date NOT NULL,
  `fkPerson` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_formationPlanLesson`
--

CREATE TABLE `t_formationPlanLesson` (
  `fkFormation` binary(16) NOT NULL,
  `fkLesson` binary(16) NOT NULL,
  `beginDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_gender`
--

CREATE TABLE `t_gender` (
  `idGender` binary(16) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_grade`
--

CREATE TABLE `t_grade` (
  `idGrade` binary(16) NOT NULL,
  `weighting` float NOT NULL,
  `grade` float NOT NULL,
  `fkPerson` binary(16) NOT NULL,
  `fkLesson` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_lesson`
--

CREATE TABLE `t_lesson` (
  `idLesson` binary(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fkType` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_person`
--

CREATE TABLE `t_person` (
  `idPerson` binary(16) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(150) NOT NULL,
  `streetNumber` varchar(3) NOT NULL,
  `zip` varchar(4) NOT NULL,
  `locality` varchar(150) NOT NULL,
  `fkGender` binary(16) NOT NULL,
  `insertDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_personRole`
--

CREATE TABLE `t_personRole` (
  `fkPerson` binary(16) NOT NULL,
  `fkRole` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_role`
--

CREATE TABLE `t_role` (
  `idRole` binary(16) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_section`
--

CREATE TABLE `t_section` (
  `idSection` binary(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `acronym` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_student`
--

CREATE TABLE `t_student` (
  `idPerson` binary(16) NOT NULL,
  `fkSection` binary(16) NOT NULL,
  `fkClass` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_teacher`
--

CREATE TABLE `t_teacher` (
  `idPerson` binary(16) NOT NULL,
  `acronym` varchar(5) NOT NULL,
  `fkSection` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_TPI`
--

CREATE TABLE `t_TPI` (
  `idTPI` binary(16) NOT NULL,
  `grade` float NOT NULL,
  `passageDate` date NOT NULL,
  `fkPerson` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Structure de la table `t_type`
--

CREATE TABLE `t_type` (
  `idType` binary(16) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_class`
--
ALTER TABLE `t_class`
  ADD PRIMARY KEY (`idClass`),
  ADD UNIQUE KEY `ID_t_class_IND` (`idClass`),
  ADD KEY `FKmanage_IND` (`fkPerson`),
  ADD KEY `FKhave_IND` (`fkFormation`);

--
-- Index pour la table `t_formationPlan`
--
ALTER TABLE `t_formationPlan`
  ADD PRIMARY KEY (`idFormation`),
  ADD UNIQUE KEY `ID_t_formationPlans_IND` (`idFormation`),
  ADD KEY `FKattribute_IND` (`fkPerson`);

--
-- Index pour la table `t_formationPlanLesson`
--
ALTER TABLE `t_formationPlanLesson`
  ADD PRIMARY KEY (`fkLesson`,`fkFormation`),
  ADD UNIQUE KEY `ID_contain_IND` (`fkLesson`,`fkFormation`),
  ADD KEY `FKcon_t_f_IND` (`fkFormation`);

--
-- Index pour la table `t_gender`
--
ALTER TABLE `t_gender`
  ADD PRIMARY KEY (`idGender`),
  ADD UNIQUE KEY `ID_t_gender_IND` (`idGender`);

--
-- Index pour la table `t_grade`
--
ALTER TABLE `t_grade`
  ADD PRIMARY KEY (`idGrade`),
  ADD UNIQUE KEY `ID_t_grade_IND` (`idGrade`),
  ADD KEY `FKgrant_IND` (`fkPerson`),
  ADD KEY `FKassign_IND` (`fkLesson`);

--
-- Index pour la table `t_lesson`
--
ALTER TABLE `t_lesson`
  ADD PRIMARY KEY (`idLesson`),
  ADD UNIQUE KEY `ID_t_lesson_IND` (`idLesson`),
  ADD KEY `FKtype_IND` (`fkType`);

--
-- Index pour la table `t_person`
--
ALTER TABLE `t_person`
  ADD PRIMARY KEY (`idPerson`),
  ADD UNIQUE KEY `ID_t_person_IND` (`idPerson`),
  ADD KEY `FKisGendered_IND` (`fkGender`);

--
-- Index pour la table `t_personRole`
--
ALTER TABLE `t_personRole`
  ADD PRIMARY KEY (`fkRole`,`fkPerson`),
  ADD UNIQUE KEY `ID_own_IND` (`fkRole`,`fkPerson`),
  ADD KEY `FKown_t_p_IND` (`fkPerson`);

--
-- Index pour la table `t_role`
--
ALTER TABLE `t_role`
  ADD PRIMARY KEY (`idRole`),
  ADD UNIQUE KEY `ID_t_role_IND` (`idRole`);

--
-- Index pour la table `t_section`
--
ALTER TABLE `t_section`
  ADD PRIMARY KEY (`idSection`),
  ADD UNIQUE KEY `ID_t_section_IND` (`idSection`);

--
-- Index pour la table `t_student`
--
ALTER TABLE `t_student`
  ADD PRIMARY KEY (`idPerson`),
  ADD UNIQUE KEY `FKt_p_t_s_IND` (`idPerson`),
  ADD KEY `FKpartOf_IND` (`fkSection`),
  ADD KEY `FKisIn_IND` (`fkClass`);

--
-- Index pour la table `t_teacher`
--
ALTER TABLE `t_teacher`
  ADD PRIMARY KEY (`idPerson`),
  ADD UNIQUE KEY `FKt_p_t_t_IND` (`idPerson`),
  ADD KEY `FKbelong_IND` (`fkSection`);

--
-- Index pour la table `t_TPI`
--
ALTER TABLE `t_TPI`
  ADD PRIMARY KEY (`idTPI`),
  ADD UNIQUE KEY `ID_t_TPI_IND` (`idTPI`),
  ADD KEY `FKpass_IND` (`fkPerson`);

--
-- Index pour la table `t_type`
--
ALTER TABLE `t_type`
  ADD PRIMARY KEY (`idType`),
  ADD UNIQUE KEY `ID_t_type_IND` (`idType`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_class`
--
ALTER TABLE `t_class`
  ADD CONSTRAINT `FKhave_FK` FOREIGN KEY (`fkFormation`) REFERENCES `t_formationPlan` (`idFormation`),
  ADD CONSTRAINT `FKmanage_FK` FOREIGN KEY (`fkPerson`) REFERENCES `t_teacher` (`idPerson`);

--
-- Contraintes pour la table `t_formationPlan`
--
ALTER TABLE `t_formationPlan`
  ADD CONSTRAINT `FKattribute_FK` FOREIGN KEY (`fkPerson`) REFERENCES `t_teacher` (`idPerson`);

--
-- Contraintes pour la table `t_formationPlanLesson`
--
ALTER TABLE `t_formationPlanLesson`
  ADD CONSTRAINT `FKcon_t_f_FK` FOREIGN KEY (`fkFormation`) REFERENCES `t_formationPlan` (`idFormation`),
  ADD CONSTRAINT `FKcon_t_l` FOREIGN KEY (`fkLesson`) REFERENCES `t_lesson` (`idLesson`);

--
-- Contraintes pour la table `t_grade`
--
ALTER TABLE `t_grade`
  ADD CONSTRAINT `FKassign_FK` FOREIGN KEY (`fkLesson`) REFERENCES `t_lesson` (`idLesson`),
  ADD CONSTRAINT `FKgrant_FK` FOREIGN KEY (`fkPerson`) REFERENCES `t_student` (`idPerson`);

--
-- Contraintes pour la table `t_lesson`
--
ALTER TABLE `t_lesson`
  ADD CONSTRAINT `FKtype_FK` FOREIGN KEY (`fkType`) REFERENCES `t_type` (`idType`);

--
-- Contraintes pour la table `t_person`
--
ALTER TABLE `t_person`
  ADD CONSTRAINT `FKisGendered_FK` FOREIGN KEY (`fkGender`) REFERENCES `t_gender` (`idGender`);

--
-- Contraintes pour la table `t_personRole`
--
ALTER TABLE `t_personRole`
  ADD CONSTRAINT `FKown_t_p_FK` FOREIGN KEY (`fkPerson`) REFERENCES `t_person` (`idPerson`),
  ADD CONSTRAINT `FKown_t_r` FOREIGN KEY (`fkRole`) REFERENCES `t_role` (`idRole`);

--
-- Contraintes pour la table `t_student`
--
ALTER TABLE `t_student`
  ADD CONSTRAINT `FKisIn_FK` FOREIGN KEY (`fkClass`) REFERENCES `t_class` (`idClass`),
  ADD CONSTRAINT `FKpartOf_FK` FOREIGN KEY (`fkSection`) REFERENCES `t_section` (`idSection`),
  ADD CONSTRAINT `FKt_p_t_s_FK` FOREIGN KEY (`idPerson`) REFERENCES `t_person` (`idPerson`);

--
-- Contraintes pour la table `t_teacher`
--
ALTER TABLE `t_teacher`
  ADD CONSTRAINT `FKbelong_FK` FOREIGN KEY (`fkSection`) REFERENCES `t_section` (`idSection`),
  ADD CONSTRAINT `FKt_p_t_t_FK` FOREIGN KEY (`idPerson`) REFERENCES `t_person` (`idPerson`);

--
-- Contraintes pour la table `t_TPI`
--
ALTER TABLE `t_TPI`
  ADD CONSTRAINT `FKpass_FK` FOREIGN KEY (`fkPerson`) REFERENCES `t_student` (`idPerson`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
