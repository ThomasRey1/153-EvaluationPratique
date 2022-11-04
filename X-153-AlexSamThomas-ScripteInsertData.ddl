use db_formation;


--
-- Déchargement des données de la table `t_role`
--

INSERT INTO `t_role` (`idRole`, `role`) VALUES
(0xb1fe08a05bb211ed937a0242ac120002, 'Doyen'),
(0xb1fe0c4b5bb211ed937a0242ac120002, 'Directeur'),
(0xb1fe0e4a5bb211ed937a0242ac120002, 'Directeur-Adjoint'),
(0xb1fe0ef65bb211ed937a0242ac120002, 'MP'),
(0xb1fe0f3b5bb211ed937a0242ac120002, 'secrétaire');

--
-- Déchargement des données de la table `t_section`
--

INSERT INTO `t_section` (`idSection`, `name`, `acronym`) VALUES
(0xb20077c45bb211ed937a0242ac120002, 'Informatique', 'Inf'),
(0xb2007bb05bb211ed937a0242ac120002, 'Bois', 'Bois'),
(0xb2007dc55bb211ed937a0242ac120002, 'Mecanique', 'Mec'),
(0xb2007e7f5bb211ed937a0242ac120002, 'Electronique', 'Elec'),
(0xb2007ec35bb211ed937a0242ac120002, 'Polymecanique', 'Poly');


--
-- Déchargement des données de la table `t_type`
--

INSERT INTO `t_type` (`idType`, `type`) VALUES
(0xb20558de5bb211ed937a0242ac120002, 'CIE'),
(0xb2055c595bb211ed937a0242ac120002, 'module école'),
(0xb2055e545bb211ed937a0242ac120002, 'pratique'),
(0xb2055f015bb211ed937a0242ac120002, 'CBE'),
(0xb2055f425bb211ed937a0242ac120002, 'ECG'),
(0xb2055f7e5bb211ed937a0242ac120002, 'MPT');

--
-- Déchargement des données de la table `t_gender`
--

INSERT INTO `t_gender` (`idGender`, `type`) VALUES
(0xb202a81e5bb211ed937a0242ac120002, 'Homme'),
(0xb202ab905bb211ed937a0242ac120002, 'Femme'),
(0xb202ad795bb211ed937a0242ac120002, 'Autre');

--
-- Déchargement des données de la table `t_person`
--

INSERT INTO `t_person` (`idPerson`, `lastname`, `firstname`, `birthday`, `phoneNumber`, `email`, `street`, `streetNumber`, `zip`, `locality`, `fkGender`, `insertDate`) VALUES
(0xb20818d15bb211ed937a0242ac120002, 'Mich', 'Jean', '2022-11-18', '987/345/34/23', 'jean@gmail.com', 'Ch.de la Chapelle', '4', '2345', 'Echallens', 0xb202a81e5bb211ed937a0242ac120002, '2022-08-27'),
(0xb2081fcf5bb211ed937a0242ac120002, 'Duck', 'Riri', '2022-07-19', '234/343/23/34', 'Riri@gmail.com', 'Ch. du Rosier', '7', '1234', 'Picsouland', 0xb202a81e5bb211ed937a0242ac120002, '2022-10-13'),
(0xb20823425bb211ed937a0242ac120002, 'Duck', 'Fifi', '2022-05-17', '234/344/34/23', 'Fifi@gmail.com', 'Ch.de la Mar', '3', '1234', 'Picsouland', 0xb202a81e5bb211ed937a0242ac120002, '2022-11-01'),
(0xb20825bd5bb211ed937a0242ac120002, 'Duck', 'Loulou', '2022-08-17', '234/343/34/34', 'Loulou@gmail.com', 'Ch. de l\'Etang ', '5', '1243', 'Picsouland', 0xb202a81e5bb211ed937a0242ac120002, '2022-11-01'),
(0xb20826f35bb211ed937a0242ac120002, 'Grey', 'Julie', '2022-08-15', '234/343/34/32', 'Julie@gmail.com', 'Ch.de la Ropa', '5', '5678', 'Lausanne', 0xb202a81e5bb211ed937a0242ac120002, '2022-10-31'),
(0xb20828165bb211ed937a0242ac120002, 'Etchebest', 'Philipe', '2022-06-14', '234/344/73/24', 'philipe@gmail.com', 'ch. de la rosie', '4', '5677', 'Paris', 0xb202a81e5bb211ed937a0242ac120002, '2022-11-01'),
(0xb20829385bb211ed937a0242ac120002, 'Jey', 'Katy', '2022-06-21', '345/343/34/34', 'katy@gmail.com', 'ch.rosey', '4', '2345', 'Lausanne', 0xb202ab905bb211ed937a0242ac120002, '2022-11-01'),
(0xb2082a4c5bb211ed937a0242ac120002, 'Blandy', 'Josephine', '2022-06-14', '234/343/23/43', 'josephine@gmail.com', 'ch.du Calley', '4', '3456', 'Montreux', 0xb202ab905bb211ed937a0242ac120002, '2022-11-01'),
(0xb2082b5f5bb211ed937a0242ac120002, 'Sling', 'Brandy', '2022-07-19', '234/342/44/55', 'brandy@gmail.com', 'ch.de la Lepraz', '2', '2345', 'Vevey', 0xb202ab905bb211ed937a0242ac120002, '2022-11-01'),
(0xb2082c745bb211ed937a0242ac120002, 'Marsu', 'Tomy', '2022-04-05', '234/343/34/34', 'tom@gmail.com', 'ch.de la Roue', '7', '5677', 'Yverdon', 0xb202ad795bb211ed937a0242ac120002, '2022-11-01');

--
-- Déchargement des données de la table `t_personRole`
--

INSERT INTO `t_personRole` (`fkPerson`, `fkRole`) VALUES
(0xb20818d15bb211ed937a0242ac120002, 0xb1fe0c4b5bb211ed937a0242ac120002),
(0xb2081fcf5bb211ed937a0242ac120002, 0xb1fe08a05bb211ed937a0242ac120002),
(0xb20823425bb211ed937a0242ac120002, 0xb1fe0e4a5bb211ed937a0242ac120002),
(0xb20825bd5bb211ed937a0242ac120002, 0xb1fe0ef65bb211ed937a0242ac120002),
(0xb20826f35bb211ed937a0242ac120002, 0xb1fe0f3b5bb211ed937a0242ac120002);

--
-- Déchargement des données de la table `t_teacher`
--

INSERT INTO `t_teacher` (`idPerson`, `acronym`, `fkSection`) VALUES
(0xb20828165bb211ed937a0242ac120002, 'pee', 0xb20077c45bb211ed937a0242ac120002),
(0xb20829385bb211ed937a0242ac120002, 'kjy', 0xb2007bb05bb211ed937a0242ac120002),
(0xb2082a4c5bb211ed937a0242ac120002, 'jby', 0xb2007dc55bb211ed937a0242ac120002),
(0xb2082b5f5bb211ed937a0242ac120002, 'bsg', 0xb2007e7f5bb211ed937a0242ac120002),
(0xb2082c745bb211ed937a0242ac120002, 'tmu', 0xb2007ec35bb211ed937a0242ac120002);


--
-- Déchargement des données de la table `t_formationPlan`
--

INSERT INTO `t_formationPlan` (`idFormation`, `name`, `description`, `startYear`, `endYear`, `fkPerson`) VALUES
(0xed6100165bb511ed937a0242ac120002, 'ICT', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2018-11-10', '2022-11-10', 0xb2082c745bb211ed937a0242ac120002),
(0xed6106065bb511ed937a0242ac120002, 'ICT avec maturité', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2019-11-10', '2022-11-10', 0xb2082b5f5bb211ed937a0242ac120002),
(0xed61070e5bb511ed937a0242ac120002, 'Plan 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2020-11-10', '2022-11-10', 0xb2082a4c5bb211ed937a0242ac120002),
(0xed6107855bb511ed937a0242ac120002, 'Plan 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2017-11-10', '2022-11-10', 0xb20828165bb211ed937a0242ac120002),
(0xed6107f05bb511ed937a0242ac120002, 'Plan 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2019-11-10', '2022-11-10', 0xb20828165bb211ed937a0242ac120002);

--
-- Déchargement des données de la table `t_class`
--

INSERT INTO `t_class` (`idClass`, `name`, `fkPerson`, `fkFormation`) VALUES
(0xad97273f5bb611ed937a0242ac120002, 'MIN', 0xb2082c745bb211ed937a0242ac120002, 0xed6100165bb511ed937a0242ac120002),
(0xad972b865bb611ed937a0242ac120002, 'CIN', 0xb2082c745bb211ed937a0242ac120002, 0xed6106065bb511ed937a0242ac120002),
(0xad972de95bb611ed937a0242ac120002, 'CID', 0xb2082b5f5bb211ed937a0242ac120002, 0xed61070e5bb511ed937a0242ac120002),
(0xad972eec5bb611ed937a0242ac120002, 'MAM', 0xb2082b5f5bb211ed937a0242ac120002, 0xed6107855bb511ed937a0242ac120002),
(0xad972f6f5bb611ed937a0242ac120002, 'MID', 0xb2082a4c5bb211ed937a0242ac120002, 0xed6107f05bb511ed937a0242ac120002);




--
-- Déchargement des données de la table `t_student`
--

INSERT INTO `t_student` (`idPerson`, `fkSection`, `fkClass`) VALUES
(0xb20818d15bb211ed937a0242ac120002, 0xb20077c45bb211ed937a0242ac120002, 0xad97273f5bb611ed937a0242ac120002),
(0xb2081fcf5bb211ed937a0242ac120002, 0xb20077c45bb211ed937a0242ac120002, 0xad97273f5bb611ed937a0242ac120002),
(0xb20823425bb211ed937a0242ac120002, 0xb2007bb05bb211ed937a0242ac120002, 0xad972b865bb611ed937a0242ac120002),
(0xb20825bd5bb211ed937a0242ac120002, 0xb2007bb05bb211ed937a0242ac120002, 0xad972b865bb611ed937a0242ac120002),
(0xb20826f35bb211ed937a0242ac120002, 0xb2007dc55bb211ed937a0242ac120002, 0xad972de95bb611ed937a0242ac120002);


--
-- Déchargement des données de la table `t_TPI`
--

INSERT INTO `t_TPI` (`idTPI`, `grade`,`passageDate`, `fkPerson`) VALUES
(0xdfd2cb535bb711ed937a0242ac120002, 5.25,'2022-11-10', 0xb20818d15bb211ed937a0242ac120002),
(0xdfd2cf715bb711ed937a0242ac120002, 3.7,'2022-11-10', 0xb2081fcf5bb211ed937a0242ac120002),
(0xdfd2d19b5bb711ed937a0242ac120002, 4.75,'2022-11-10', 0xb20823425bb211ed937a0242ac120002),
(0xdfd2d2795bb711ed937a0242ac120002, 5.35,'2022-11-10', 0xb20825bd5bb211ed937a0242ac120002),
(0xdfd2d2da5bb711ed937a0242ac120002, 3.84,'2022-11-10', 0xb20826f35bb211ed937a0242ac120002);



--
-- Déchargement des données de la table `t_lesson`
--

INSERT INTO `t_lesson` (`idLesson`, `name`, `fkType`) VALUES
(0xdfd58dd95bb711ed937a0242ac120002, 'Français', 0xb2055f7e5bb211ed937a0242ac120002),
(0xdfd592775bb711ed937a0242ac120002, 'Anglais', 0xb2055f7e5bb211ed937a0242ac120002),
(0xdfd594ec5bb711ed937a0242ac120002, 'Math', 0xb2055f7e5bb211ed937a0242ac120002),
(0xdfd595cf5bb711ed937a0242ac120002, 'P_mobil', 0xb2055e545bb211ed937a0242ac120002),
(0xdfd596355bb711ed937a0242ac120002, 'P_proj', 0xb2055e545bb211ed937a0242ac120002);


--
-- Déchargement des données de la table `t_grade`
--

INSERT INTO `t_grade` (`idGrade`, `weighting`, `grade`, `fkPerson`, `fkLesson`) VALUES
(0xde73f69e5bb811ed937a0242ac120002, 2, 4.3, 0xb20826f35bb211ed937a0242ac120002, 0xdfd58dd95bb711ed937a0242ac120002),
(0xde73fac05bb811ed937a0242ac120002, 1, 3.45, 0xb20825bd5bb211ed937a0242ac120002, 0xdfd592775bb711ed937a0242ac120002),
(0xde73fe0d5bb811ed937a0242ac120002, 1, 5.2, 0xb20823425bb211ed937a0242ac120002, 0xdfd594ec5bb711ed937a0242ac120002),
(0xde73ff5e5bb811ed937a0242ac120002, 2, 4.81, 0xb2081fcf5bb211ed937a0242ac120002, 0xdfd595cf5bb711ed937a0242ac120002),
(0xde73fff55bb811ed937a0242ac120002, 1.5, 4.35, 0xb20818d15bb211ed937a0242ac120002, 0xdfd596355bb711ed937a0242ac120002);



--
-- Déchargement des données de la table `t_formationPlanLesson`
--

INSERT INTO `t_formationPlanLesson` (`fkFormation`, `fkLesson`, `beginDate`, `endDate`) VALUES
(0xed6100165bb511ed937a0242ac120002, 0xdfd58dd95bb711ed937a0242ac120002, '2022-04-20', '2022-08-26'),
(0xed6100165bb511ed937a0242ac120002, 0xdfd592775bb711ed937a0242ac120002, '2022-06-15', '2022-11-26'),
(0xed6106065bb511ed937a0242ac120002, 0xdfd592775bb711ed937a0242ac120002, '2022-08-23', '2022-09-15'),
(0xed6106065bb511ed937a0242ac120002, 0xdfd594ec5bb711ed937a0242ac120002, '2022-07-18', '2022-09-13'),
(0xed6100165bb511ed937a0242ac120002, 0xdfd596355bb711ed937a0242ac120002, '2022-07-05', '2022-08-18');











