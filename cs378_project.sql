-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2014 at 11:55 AM
-- Server version: 5.5.36
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rickwri1_cs378_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

DROP TABLE IF EXISTS `cast`;
CREATE TABLE IF NOT EXISTS `cast` (
  `cast_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `actor` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`cast_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1147 ;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`cast_id`, `mid`, `actor`, `role`) VALUES
(850, 18, 'Mark Hamill', 'Luke Skywalker'),
(851, 18, 'Harrison Ford', 'Han Solo'),
(852, 18, 'Carrie Fisher', 'Leia Organa'),
(853, 18, 'Peter Cushing', 'Grand Moff Tarkin'),
(854, 18, 'Alec Guinness', 'Obi-Wan Kenobi'),
(855, 18, 'Anthony Daniels', 'C-3PO'),
(856, 18, 'Kenny Baker', 'R2-D2'),
(857, 18, 'Peter Mayhew', 'Chewbacca'),
(858, 18, 'David Prowse', 'Darth Vader'),
(859, 18, 'Phil Brown', 'Uncle Owen'),
(860, 18, 'Shelagh Fraser', 'Aunt Beru'),
(861, 18, 'Jack Purvis', 'Chief Jawa'),
(862, 18, 'Alex McCrindle', 'General Dodonna'),
(863, 18, 'Eddie Byrne', 'General Willard'),
(864, 18, 'Drewe Henley', 'Red Leader (as Drewe Hemley)'),
(865, 18, 'Denis Lawson', 'Red Two (Wedge) (as Dennis Law'),
(866, 18, 'Garrick Hagon', 'Red Three (Biggs)'),
(867, 18, 'Jack Klaff', 'Red Four (John D.)'),
(868, 18, 'William Hootkins', 'Jek Tono Porkins (Red Six)'),
(869, 18, 'James Earl Jones', 'Darth Vader (voice)'),
(870, 18, 'Roger Lloyd-Pack', 'Advisor to Grand Moff Tarkin'),
(871, 18, 'Malcolm Tierney', 'Lt. Shann Childsen'),
(872, 18, 'Angus MacInnes', 'Gold Leader (as Angus Mcinnis)'),
(873, 18, 'Jeremy Sinden', 'Gold Two'),
(874, 18, 'Graham Ashley', 'Gold Five'),
(875, 18, 'Don Henderson', 'General Taggi'),
(876, 18, 'Richard LeParmentier', 'General Motti'),
(877, 18, 'Leslie Schofield', 'Commander #1'),
(878, 18, 'David Ankrum', 'Red Two (voice) (uncredited)'),
(879, 18, 'Mark Austin', 'Boba Fett (special edition) (u'),
(880, 18, 'Scott Beach', 'Stormtrooper (voice) (uncredit'),
(881, 18, 'Lightning Bear', 'Stormtrooper (uncredited)'),
(882, 18, 'Jon Berg', 'Cantina Alien (uncredited)'),
(883, 18, 'Doug Beswick', 'Cantina Alien (uncredited)'),
(884, 18, 'Paul Blake', 'Greedo (uncredited)'),
(885, 18, 'Janice Burchette', 'Nabrun Leids (uncredited)'),
(886, 18, 'Ted Burnett', 'Wuher (uncredited)'),
(887, 18, 'John Chapman', 'Drifter (Red 12) (uncredited)'),
(888, 18, 'Gilda Cohen', 'Cantina Patron (uncredited)'),
(889, 18, 'Tim Condren', 'Stormtrooper (uncredited)'),
(890, 18, 'Barry Copping', 'Wioslea (uncredited)'),
(891, 18, 'Alfie Curtis', 'Dr. Evazan (uncredited)'),
(892, 18, 'Robert Davies', 'Cantina Patron (uncredited)'),
(893, 18, 'Maria De Aragon', 'Greedo (uncredited)'),
(894, 18, 'Robert A. Denham', 'Hrchek Kal Fas (uncredited)'),
(895, 18, 'Frazer Diamond', 'Jawa (uncredited)'),
(896, 18, 'Peter Diamond', 'Stormtrooper / Tusken Raider /'),
(897, 18, 'Warwick Diamond', 'Jawa (uncredited)'),
(898, 18, 'Sadie Eden', 'Garindan (uncredited)'),
(899, 18, 'Kim Falkinburg', 'Djas Puhr (uncredited)'),
(900, 18, 'Harry Fielder', 'Death Star Trooper (uncredited'),
(901, 18, 'Ted Gagliano', 'Stormtrooper with Binoculars ('),
(902, 18, 'Salo Gardner', 'Cantina Patron (uncredited)'),
(903, 18, 'Steve Gawley', 'Death Star Trooper (uncredited'),
(904, 18, 'Barry Gnome', 'Kabe (uncredited)'),
(905, 18, 'Rusty Goffe', 'Kabe / Jawa / GONK Droid (uncr'),
(906, 18, 'Isaac Grand', 'Cantina Patron (uncredited)'),
(907, 18, 'Nelson Hall', 'Stormtrooper (special edition)'),
(908, 18, 'Reg Harding', 'Stormtrooper (uncredited)'),
(909, 18, 'Alan Harris', 'Leia''s Rebel Escort (uncredite'),
(910, 18, 'Frank Henson', 'Stormtrooper (uncredited)'),
(911, 18, 'Christine Hewett', 'Brea Tonnika (uncredited)'),
(912, 18, 'Arthur Howell', 'Stormtrooper (uncredited)'),
(913, 18, 'Tommy Ilsley', 'Ponda Baba (uncredited)'),
(914, 18, 'Joe Johnston', 'Death Star Trooper (uncredited'),
(915, 18, 'Annette Jones', 'Mosep (uncredited)'),
(916, 18, 'Linda Jones', 'Chall Bekan (uncredited)'),
(917, 18, 'Joe Kaye', 'Solomohal (uncredited)'),
(918, 18, 'Colin Michael Kitchens', 'Stormtrooper (voice) (uncredit'),
(919, 18, 'Melissa Kurtz', 'Jawa (uncredited)'),
(920, 18, 'Tiffany L. Kurtz', 'Jawa (uncredited)'),
(921, 18, 'Al Lampert', 'Daine Jir (uncredited)'),
(922, 18, 'Anthony Lang', 'BoShek (uncredited)'),
(923, 18, 'Laine Liska', 'Muftak / Cantina Band Member ('),
(924, 18, 'Derek Lyons', 'Temple Guard / Medal Bearer (u'),
(925, 18, 'Mahjoub', 'Jawa (uncredited)'),
(926, 18, 'Alf Mangan', 'Takeel (uncredited)'),
(927, 18, 'Rick McCallum', 'Stormtrooper (special edition)'),
(928, 18, 'Grant McCune', 'Death Star Gunner (uncredited)'),
(929, 18, 'Geoffrey Moon', 'Cantina Patron (uncredited)'),
(930, 18, 'Mandy Morton', 'Swilla Corey (uncredited)'),
(931, 18, 'Lorne Peterson', 'Massassi Base Rebel Scout (unc'),
(932, 18, 'Marcus Powell', 'Rycar Ryjerd (uncredited)'),
(933, 18, 'Shane Rimmer', 'InCom Engineer (uncredited)'),
(934, 18, 'Pam Rose', 'Leesub Sirln (uncredited)'),
(935, 18, 'George Roubicek', 'Cmdr. Praji (Imperial Officer '),
(936, 18, 'Erica Simmons', 'Tawss Khaa (uncredited)'),
(937, 18, 'Angela Staines', 'Senni Tonnika (uncredited)'),
(938, 18, 'George Stock', 'Cantina Patron (uncredited)'),
(939, 18, 'Roy Straite', 'Cantina Patron (uncredited)'),
(940, 18, 'Peter Sturgeon', 'Sai''torr Kal Fas (uncredited)'),
(941, 18, 'Peter Sumner', 'Lt. Pol Treidum (uncredited)'),
(942, 18, 'John Sylla', 'Cantina Voices (voice) (uncred'),
(943, 18, 'Tom Sylla', 'Massassi Outpost Announcer / V'),
(944, 18, 'Phil Tippett', 'Cantina Alien (uncredited)'),
(945, 18, 'Burnell Tucker', 'Del Goren (uncredited)'),
(946, 18, 'Morgan Upton', 'Stormtrooper (voice) (uncredit'),
(947, 18, 'Jerry Walter', 'Stormtrooper (voice) (uncredit'),
(948, 18, 'Hal Wamsley', 'Jawa (uncredited)'),
(949, 18, 'Larry Ward', 'Greedo (voice) (uncredited)'),
(950, 18, 'Diana Sadley Way', 'Thuku (uncredited)'),
(951, 18, 'Harold Weed', 'Ketwol / Melas (uncredited)'),
(952, 18, 'Bill Weston', 'Stormtrooper (uncredited)'),
(953, 18, 'Steve ''Spaz'' Williams', 'Mos Eisley Citizen (special ed'),
(954, 18, 'Fred Wood', 'Cantina Patron (uncredited)'),
(955, 19, 'Robert De Niro', 'Michael Vronsky'),
(956, 19, 'John Cazale', 'Stan'),
(957, 19, 'John Savage', 'Steven Pushkov'),
(958, 19, 'Christopher Walken', 'Nikanor â€žNickâ€œ Chevotarevi'),
(959, 19, 'Meryl Streep', 'Linda'),
(960, 19, 'George Dzundza', 'John'),
(961, 19, 'Chuck Aspegren', 'Axel'),
(962, 19, 'Shirley Stoler', 'Steven''s Mother'),
(963, 19, 'Rutanya Alda', 'Angela'),
(964, 19, 'Pierre Segui', 'Julien'),
(965, 19, 'Mady Kaplan', 'Axel''s Girl'),
(966, 19, 'Amy Wright', 'Bridesmaid'),
(967, 19, 'Mary Ann Haenel', 'Stan''s Girl'),
(968, 19, 'Richard Kuss', 'Linda''s Father'),
(969, 19, 'Joe Grifasi', 'Bandleader'),
(970, 20, 'Harrison Ford', 'Rick Deckard'),
(971, 20, 'Rutger Hauer', 'Roy Batty'),
(972, 20, 'Sean Young', 'Rachael'),
(973, 20, 'Edward James Olmos', 'Gaff'),
(974, 20, 'M. Emmet Walsh', 'Bryant'),
(975, 20, 'Daryl Hannah', 'Pris'),
(976, 20, 'William Sanderson', 'J.F. Sebastian'),
(977, 20, 'Brion James', 'Leon Kowalski'),
(978, 20, 'Joe Turkel', 'Eldon Tyrell'),
(979, 20, 'Joanna Cassidy', 'Zhora'),
(980, 20, 'James Hong', 'Hannibal Chew'),
(981, 20, 'Morgan Paull', 'Holden'),
(982, 20, 'Kevin Thompson', 'Bear'),
(983, 20, 'John Edward Allen', 'Kaiser'),
(984, 20, 'Hy Pyke', 'Taffey Lewis'),
(985, 20, 'Kimiko Hiroshige', 'Cambodian Lady'),
(986, 20, 'Carolyn DeMirjian', 'Saleslady'),
(987, 20, 'Bob Okazaki', 'Howie Lee'),
(988, 21, 'Dan Aykroyd', 'Elwood Blues (as Elwood)'),
(989, 21, 'John Belushi', '''Joliet'' Jake Blues (as Jake)'),
(990, 21, 'James Brown', 'Reverend Cleophus James'),
(991, 21, 'Cab Calloway', 'Curtis'),
(992, 21, 'Ray Charles', 'Ray'),
(993, 21, 'Aretha Franklin', 'Mrs. Murphy'),
(994, 21, 'Steve Cropper', 'Steve ''The Colonel'' Cropper'),
(995, 21, 'Donald "Duck" Dunn', 'Donald ''Duck'' Dunn'),
(996, 21, 'Murphy Dunne', 'Murphy ''Murph'' Dunne'),
(997, 21, 'Willie Hall', 'Willie ''Too Big'' Hall'),
(998, 21, 'John Candy', 'Burton Mercer'),
(999, 21, 'Carrie Fisher', 'Mystery Woman'),
(1000, 21, 'John Lee Hooker', 'John Lee Hooker'),
(1001, 21, 'Lou Marini', '''Blue Lou'' Marini'),
(1002, 21, 'Matt Murphy', 'Matt ''Guitar'' Murphy'),
(1003, 21, 'Kathleen Freeman', 'Schwester Mary Stigmata (''Die '),
(1004, 21, 'Tom Erhart', 'Prison Guard'),
(1005, 21, 'Gerald Walling', 'Prison Guard'),
(1006, 21, 'Walter Levine', 'Prison Guard'),
(1007, 21, 'Alonzo Atkins', 'Choirmaster'),
(1008, 21, 'Chaka Khan', 'Choir Soloist'),
(1009, 21, 'Armand Cerami', 'Trooper Daniel'),
(1010, 21, 'Steven Williams', 'Trooper Mount'),
(1011, 21, 'Kristi Oleson', 'Sales Girl'),
(1012, 21, 'Gary McLarty', 'Man in Toy Store'),
(1013, 21, 'Joe Cuttone', 'Lloyd'),
(1014, 21, 'Layne Britton', 'The Cheese Whiz'),
(1015, 21, 'Toni Fleming', 'Mrs. Tarantino'),
(1016, 21, 'Rosie Shuster', 'Cocktail Waitress'),
(1017, 21, 'Alan Rubin', 'Mr. Fabulous'),
(1018, 21, 'Paul Reubens', 'Waiter'),
(1019, 21, 'Ben Piazza', 'Father'),
(1020, 21, 'Gwen Banta', 'Mother'),
(1021, 21, 'Lari Taylor', 'Daughter #1'),
(1022, 21, 'Cindy Fisher', 'Daughter #2'),
(1023, 21, 'Elizabeth Hoy', 'Daughter #3'),
(1024, 21, 'Tony M. Conde', 'Sommelier'),
(1025, 21, 'Eugene J. Anthony', 'GruppenfÃ¼hrer'),
(1026, 21, 'Dean Hill', 'Nazi'),
(1027, 21, 'Jack Orend', 'Nazi'),
(1028, 21, 'Gene Schuldt', 'Nazi'),
(1029, 21, 'Charles Mountain', 'Cop'),
(1030, 21, 'Frank Oz', 'Corrections Officer'),
(1031, 21, 'John Landis', 'Trooper La Fong'),
(1032, 21, 'Henry Gibson', 'Head Nazi'),
(1033, 21, 'Gary Houston', 'Nazi'),
(1034, 21, 'Judith Belushi-Pisano', 'Cocktail Waitress'),
(1035, 21, 'Elmore James', 'Choir'),
(1036, 21, 'Tom Malone', '"Bones" Malone'),
(1037, 21, 'Stephen Bishop', 'Charming Trooper'),
(1038, 21, 'Charles Napier', 'Tucker McElroy'),
(1039, 21, 'Steven Spielberg', 'Cook County Assessor''s Office '),
(1040, 25, 'Al Pacino', 'Walter Burke'),
(1041, 25, 'Colin Farrell', 'James Douglas Clayton'),
(1042, 25, 'Bridget Moynahan', 'Layla Moore'),
(1043, 25, 'Gabriel Macht', 'Zack'),
(1044, 25, 'Kenneth Mitchell', 'Alan'),
(1045, 25, 'Mike Realba', 'Ronnie'),
(1046, 25, 'Karl Pruner', 'Dennis Slayne'),
(1047, 25, 'Eugene Lipinski', 'Husky Man'),
(1048, 26, 'Francis Ford Coppola', 'Himself'),
(1049, 26, 'Mario Puzo', 'Himself'),
(1050, 26, 'Marlon Brando', 'Himself'),
(1051, 27, 'Bobby Cannavale', 'Chato Cadena'),
(1052, 27, 'Angela Alvarado', 'Delia Flores'),
(1053, 27, 'Shay Roundtree', 'Junie Gatling'),
(1054, 27, 'Ruben Carbajal', 'Joey Cadena'),
(1055, 27, 'Neko Parham', 'Shawn Williams'),
(1056, 27, 'Sheryl Lee', 'Marlene McDillon Cadena'),
(1057, 27, 'Brian Benben', 'Dr. Heywood Klein'),
(1058, 27, 'Yancey Arias', 'Miguel Cadena'),
(1059, 28, 'Barry Livingston', 'Professor Karl Griffin'),
(1060, 28, 'Dee Wallace', 'Laura Griffin'),
(1061, 29, 'Billy Crystal', 'Lionel Carpenter'),
(1062, 29, 'Joan Prather', 'Segoynia Savaka'),
(1063, 29, 'Doris Roberts', 'Mrs. Carpenter'),
(1064, 29, 'Alex Rocco', 'Sgt. Danny Bonhoff'),
(1065, 29, 'Roddy McDowall', 'Gypsy Grandmother / Dr. Fishbi'),
(1066, 29, 'Imogene Coca', 'Madam Marie'),
(1067, 29, 'Richard Deacon', 'Newscaster'),
(1068, 29, 'Alice Ghostley', 'Nurse Tumm'),
(1069, 29, 'George Gobel', 'President Of The United States'),
(1070, 29, 'Fannie Flagg', 'First Lady'),
(1071, 29, 'Norman Fell', 'Mr. Savaka'),
(1072, 29, 'Paul Lynde', 'Dr. Vidal'),
(1073, 29, 'Sheree North', 'Mystery Lady'),
(1074, 29, 'Charlotte Rae', 'Claire'),
(1075, 29, 'Jimmie Walker', 'Umbuto'),
(1076, 29, 'Billy Barty', 'Lester'),
(1077, 29, 'Keene Curtis', 'Dr. Lasse-Braun'),
(1078, 29, 'Rosey Grier', 'Cabbie'),
(1079, 29, 'Jane Connell', 'Anthropologist'),
(1080, 29, 'Joan Rivers', 'Nurse'),
(1081, 29, 'Charles Pierce', 'Queen Of England'),
(1082, 29, 'Valerie Curtin', 'Pashima'),
(1083, 29, 'Ron Rifkin', 'Dr. Briscoe'),
(1084, 29, 'Jack Fletcher', 'The Pope'),
(1085, 29, 'Melissa Rivers', 'Little Girl'),
(1086, 30, 'Kahle Reardon', 'Sarah Connor'),
(1087, 30, 'Jamie Bradley', 'John Connor'),
(1088, 30, 'Jasson Cring', 'The Terminator'),
(1089, 30, 'Marshall Weber', 'T-1000'),
(1090, 30, 'Cody De Vos', 'Dr. Silberman'),
(1091, 30, 'Kyle Williams', 'Miles Dyson'),
(1092, 30, 'John Silvestro', 'Enrique Salceda'),
(1093, 31, 'Daniel Radcliffe', 'Harry Potter'),
(1094, 31, 'Rupert Grint', 'Ron Weasley'),
(1095, 31, 'Emma Watson', 'Hermione Granger'),
(1096, 31, 'Richard Harris', 'Albus Dumbledore'),
(1097, 31, 'Maggie Smith', 'Professor Minerva McGonagall'),
(1098, 31, 'Robbie Coltrane', 'Rubeus Hagrid'),
(1099, 31, 'Saunders Triplets', 'Baby Harry Potter'),
(1100, 31, 'Fiona Shaw', 'Aunt Petunia Dursley'),
(1101, 31, 'Harry Melling', 'Dudley Dursley'),
(1102, 31, 'Richard Griffiths', 'Uncle Vernon Dursley'),
(1103, 31, 'Derek Deadman', 'Tom'),
(1104, 31, 'Ian Hart', 'Professor Quirinus Quirrell'),
(1105, 31, 'Ben Borowiecki', 'Angus'),
(1106, 31, 'Geraldine Somerville', 'Mrs. Lily Potter'),
(1107, 31, 'Verne Troyer', 'Griphook the Goblin'),
(1108, 31, 'John Hurt', 'Mr. Ollivander'),
(1109, 31, 'Bonnie Wright', 'Ginny Weasley'),
(1110, 31, 'Chris Rankin', 'Percy Weasley'),
(1111, 31, 'Tom Felton', 'Draco Malfoy'),
(1112, 31, 'Julie Walters', 'Molly Weasley'),
(1113, 31, 'Matthew Lewis', 'Neville Longbottom'),
(1114, 31, 'Alan Rickman', 'Severus Snape'),
(1115, 31, 'ZoÃ« Wanamaker', 'Rolanda Hooch'),
(1116, 31, 'Rik Mayall', 'Peeves (scenes cut)'),
(1117, 31, 'Leslie Phillips', 'The Sorting Hat'),
(1118, 32, 'James Remar', 'Ajax'),
(1119, 32, 'Michael Beck', 'Swan'),
(1120, 32, 'David Patrick Kelly', 'Luther'),
(1121, 32, 'Dorsey Wright', 'Cleon'),
(1122, 32, 'David Harris', 'Cochise'),
(1123, 32, 'Deborah Van Valkenburgh', 'Mercy'),
(1124, 32, 'Brian Tyler', 'Snow'),
(1125, 32, 'Steve James', 'Baseball Fury'),
(1126, 35, 'Marilyn Joi', 'Cleopatra Schwartz'),
(1127, 35, 'Saul Kahan', 'Schwartz'),
(1128, 35, 'David Zucker', 'Man'),
(1129, 35, 'Marcy Goldman', 'Housewife'),
(1130, 35, 'Donald Sutherland', 'le serveur maladroit'),
(1131, 35, 'Bill Bixby', 'Lui-mÃªme'),
(1132, 35, 'John Landis', 'le technicien se battant contr'),
(1133, 35, 'Uschi Digard', ''),
(1134, 36, 'Romain Duris', 'Paul Exben'),
(1135, 36, 'Marina Fois', 'Sarah'),
(1136, 36, 'Catherine Deneuve', 'Anne'),
(1137, 36, 'Niels Arestrup', 'BartholomÃ©'),
(1138, 36, 'Esteban Carvajal Alegria', 'ValÃ©ry Grey'),
(1139, 36, 'Branka KatiÄ‡', 'Ivana'),
(1140, 36, 'Eric Ruf', 'GrÃ©goire Kremer'),
(1141, 36, 'Enzo CaÃ§ote', 'Hugo Exben'),
(1142, 36, 'Luka Antic', 'Baptiste'),
(1143, 36, 'Rachel Berger', 'Fiona Exben'),
(1144, 38, 'Scarlett Johansson', 'Amanda'),
(1145, 38, 'Aleska Palladino', 'Laurel'),
(1146, 38, 'Mary Kay Place', 'Elaine');

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
CREATE TABLE IF NOT EXISTS `crew` (
  `crew_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cjob` varchar(30) NOT NULL,
  PRIMARY KEY (`crew_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`crew_id`, `mid`, `cname`, `cjob`) VALUES
(10, 18, 'John Williams', 'Original Music Composer'),
(11, 18, 'Gilbert Taylor', 'Director of Photography'),
(12, 19, 'Stanley Myers', 'Music'),
(13, 19, 'Vilmos Zsigmond', 'Director of Photography'),
(14, 19, 'Peter Zinner', 'Editor'),
(15, 20, 'Jordan Cronenweth', 'Director of Photography'),
(16, 20, 'Vangelis', 'Original Music Composer'),
(17, 20, 'Lawrence G. Paull', 'Production Design'),
(18, 20, 'Marsha Nakashima', 'Editor'),
(19, 20, 'David L. Snyder', 'Art Direction'),
(20, 20, 'Linda DeScenna', 'Set Decoration'),
(21, 20, 'Leslie McCarthy-Frankenheimer', 'Set Decoration'),
(22, 20, 'Thomas L. Roysden', 'Set Decoration'),
(23, 20, 'Michael Kaplan', 'Costume Design'),
(24, 20, 'Charles Knode', 'Costume Design'),
(25, 21, 'Elmer Bernstein', 'Original Music Composer'),
(26, 21, 'Stephen M. Katz', 'Director of Photography'),
(27, 21, 'George Folsey Jr.', 'Editor'),
(28, 21, 'John J. Lloyd', 'Production Design'),
(29, 21, 'Deborah Nadoolman', 'Costume Design'),
(30, 21, 'Gary McLarty', 'Special Effects'),
(31, 21, 'Gary McLarty', 'Stunt Coordinator'),
(32, 21, 'Hal Gausman', 'Set Decoration'),
(33, 21, 'Earl Sampson', 'Boom Operator'),
(34, 21, 'Steve Yaconelli', 'Camera Operator'),
(35, 21, 'John LeBlanc', 'Camera Operator'),
(36, 21, 'Mako Koiwai', 'Camera Operator'),
(37, 21, 'Leslie McCarthy-Frankenheimer', 'Set Decoration'),
(38, 25, 'Klaus Badelt', 'Original Music Composer'),
(39, 25, 'Stuart Dryburgh', 'Director of Photography'),
(40, 25, 'David Rosenbloom', 'Editor'),
(41, 27, 'Daniel Indart', 'Music'),
(42, 31, 'John Williams', 'Original Music Composer'),
(43, 31, 'John Seale', 'Director of Photography'),
(44, 31, 'Richard Francis-Bruce', 'Editor'),
(45, 31, 'Stuart Craig', 'Production Design'),
(46, 31, 'Andrew Ackland-Snow', 'Art Direction'),
(47, 31, 'Stephanie McMillan', 'Set Decoration'),
(48, 31, 'Judianna Makovsky', 'Costume Design'),
(49, 31, 'Clare Le Vesconte', 'Makeup Artist'),
(50, 31, 'Martin Cantwell', 'Sound Effects Editor'),
(51, 31, 'Nigel Brackley', 'Special Effects'),
(52, 31, 'Jim Berney', 'Visual Effects Supervisor'),
(53, 31, 'Henry Allen', 'Stunts'),
(54, 31, 'Greg Powell', 'Stunt Coordinator'),
(55, 32, 'Barry De Vorzon', 'Music'),
(56, 32, 'Andrew Laszlo', 'Director of Photography'),
(57, 32, 'David Holden', 'Editor'),
(58, 35, 'Igo Kantor', 'Original Music Composer'),
(59, 35, 'Robert E. Collins', 'Director of Photography'),
(60, 35, 'George Folsey Jr.', 'Editor'),
(61, 35, 'Stephen M. Katz', 'Director of Photography');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
  `did` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `dname` varchar(30) NOT NULL,
  `djob` varchar(30) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`did`, `mid`, `dname`, `djob`) VALUES
(1, 18, 'George Lucas', 'Director'),
(2, 19, 'Michael Cimino', 'Director'),
(3, 20, 'Ridley Scott', 'Director'),
(4, 21, 'John Landis', 'Director'),
(5, 21, 'Katherine Wooten', 'Script Supervisor'),
(6, 25, 'Roger Donaldson', 'Director'),
(7, 26, 'Jeff Werner', 'Director'),
(8, 27, 'Allen Coulter', 'Director'),
(9, 27, 'James Hayman', 'Director'),
(10, 27, 'Peter O''Fallon', 'Director'),
(11, 27, 'Michael M. Robin', 'Director'),
(12, 27, 'Daniel Sackheim', 'Director'),
(13, 28, 'Fred Olen Ray', 'Director'),
(14, 29, 'Joan Rivers', 'Director'),
(15, 31, 'Chris Columbus', 'Director'),
(16, 32, 'Walter Hill', 'Director'),
(17, 35, 'John Landis', 'Director'),
(18, 36, 'Eric Lartigau', 'Director'),
(19, 38, 'Lisa Krueger', 'Director');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `mid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `tmdbid` int(20) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `overview` text NOT NULL,
  `rel_date` date NOT NULL,
  `run_time` time NOT NULL,
  `imdbid` varchar(50) NOT NULL,
  `trivia` varchar(100) NOT NULL,
  `watched` tinyint(1) NOT NULL DEFAULT '0',
  `watched_date` date DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mid`, `uid`, `tmdbid`, `title`, `overview`, `rel_date`, `run_time`, `imdbid`, `trivia`, `watched`, `watched_date`) VALUES
(18, 3, 11, 'Star Wars: Episode IV - A New ', 'Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.', '1977-05-25', '00:01:21', 'tt0076759', '', 0, NULL),
(19, 3, 11778, 'The Deer Hunter', 'A group of working-class friends decides to enlist in the Army during the Vietnam War and finds it to be hellish chaos -- not the noble venture they imagined. Before they left, Steven married his pregnant girlfriend -- and Michael and Nick were in love with the same woman. But all three are different men upon their return.', '1978-12-08', '00:00:00', 'tt0077416', '', 0, NULL),
(20, 3, 78, 'Blade Runner', 'In the smog-choked dystopian Los Angeles of 2019, blade runner Rick Deckard is called out of retirement to kill a quartet of replicants who have escaped to Earth seeking their creator for a way to extend their short life spans.', '1982-06-25', '00:01:17', 'tt0083658', '', 0, NULL),
(21, 3, 525, 'The Blues Brothers', 'Direct out of jail, Jake Blues and his Brother Elwood are off on a â€œmission from Godâ€ to raise funds for the orphanage in which they grew up. The only thing they can do is do what they do best: play music. So they get their old band together and they''re on their way yet not without getting in a bit of trouble here and there.', '1980-06-17', '00:01:33', 'tt0080455', '', 0, NULL),
(22, 3, 25761, 'Crash Test', 'A writer is kidnapped and surgically transformed into a human crash test dummy.', '2003-01-01', '00:00:00', 'tt0407695', '', 0, NULL),
(25, 3, 1647, 'The Recruit', 'Of all the CIA operatives-in-training, James Clayton is the one young star agency veteran Walter Burke most wants to recruit. But James is far from grateful for the opportunity, even though he''s the sharpest in his class. Before James can officially become an officer, however, he must prove he''s worthy at the Farm, the CIA''s secret training grounds, where he learns to watch his back and trust no one but himself.', '2003-01-25', '00:01:15', 'tt0292506', '', 0, NULL),
(26, 3, 56205, 'The Godfather Family: A Look I', 'A documentary on the making of the three Godfather films, with interviews and recollections from the film makers and cast. This feature also includes the original screen tests of some of the actors for "The Godfather" film, and some candid moments on the set of "The Godfather: Part III."', '1990-07-12', '00:00:00', 'tt0101961', '', 0, NULL),
(27, 3, 34556, 'Kingpin', 'Rule the family. Control the empire. A Change in power looms imminent in the drug cartel family.', '2003-02-02', '00:00:00', 'tt0324865', '', 0, NULL),
(28, 3, 61863, 'Invisible Mom', 'A family''s life is thrown into comical chaos after mom accidentally drinks her inventor husband''s latest concoction, an invisibility potion.', '1997-05-20', '00:00:00', 'tt0113434', '', 0, NULL),
(29, 3, 102841, 'Rabbit Test', 'Lionel''s life turns around after a one-night stand on top of a pinball table... he becomes the world''s first pregnant man!', '1978-04-09', '00:00:00', 'tt0078133', '', 0, NULL),
(30, 3, 233341, 'Terminator the Second', 'Terminator the Second is the premiere production of the Nashville performance collective, Husky Jackal Theater. A product of nearly a year of research and revision, the script tells the story of a boy and his cyborg protector entirely in lines and phrases taken from the plays of William Shakespeare. Each line and phrase is taken from original folios, with only proper nouns, pronouns and corresponding verb tenses subject to change. In doing so, the authors were able to accurately recreate the story of Terminator 2: Judgement Day, while remaining true to the words of Shakespeare in form, if less so in intent.', '2013-11-01', '00:00:00', '', '', 0, NULL),
(31, 3, 671, 'Harry Potter and the Philosoph', 'Harry Potter has lived under the stairs at his aunt and uncle''s house his whole life. But on his 11th birthday, he learns he''s a powerful wizard -- with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school''s kindly headmaster, Harry uncovers the truth about his parents'' deaths -- and about the villain who''s to blame.', '2001-11-14', '00:01:52', 'tt0241527', '', 0, NULL),
(32, 3, 11474, 'The Warriors', 'Prominent gang leader Cyrus calls a meeting of New York''s gangs to set aside their turf wars and take over the city. At the meeting, a rival leader kills Cyrus, but a Coney Island gang called the Warriors is wrongly blamed for Cyrus'' death. Before you know it, the cops and every gangbanger in town is hot on the Warriors'' trail.', '1979-02-09', '00:00:00', 'tt0080120', '', 0, NULL),
(35, 3, 11598, 'The Kentucky Fried Movie', 'A series of loosely connected skits that spoof news programs, commercials, porno films, kung-fu films, disaster films, blaxploitation films, spy films, mafia films, and the fear that somebody is watching you on the other side of the TV.', '1977-08-10', '00:00:00', 'tt0076257', '', 0, NULL),
(36, 3, 51071, 'The Big Picture', 'Paul Exben is a success story â€“ partner in one of Paris''s most exclusive law firms, big salary, big house, glamorous wife and two sons straight out of a Gap catalog. But when he finds out that Sarah, his wife, is cheating on him with Greg Kremer, a local photographer, a rush of blood provokes Paul into a fatal error.', '2010-11-03', '00:01:14', 'tt1533818', '', 0, NULL),
(38, 3, 88224, 'Manny & Lo', 'A pregnant teen and her younger sister run away from foster homes and kidnap a woman whom they believe can help with the pregnancy.', '1996-07-26', '00:00:00', 'tt0116985', '', 0, NULL),
(39, 3, 39755, 'Sara K. Live: Nautilus Tour', 'To see Sara K. live is an unbeatable experience. For quality this DVD is the closest to it you can get. Shot at the Zuckerraffinerie in Braunschweig, Germany, this is an audiophile recording of the Sara K. Nautilus Tour 2002.', '0000-00-00', '00:00:00', '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
CREATE TABLE IF NOT EXISTS `producers` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `producer_name` varchar(30) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`pid`, `mid`, `producer_name`) VALUES
(1, 18, 'George Lucas'),
(2, 18, 'Gary Kurtz'),
(3, 18, 'Rick McCallum'),
(4, 19, 'Michael Cimino'),
(5, 19, 'Michael Deeley'),
(6, 19, 'John Peverall'),
(7, 19, 'Barry Spikings'),
(8, 19, 'Cis Corman'),
(9, 20, 'Michael Deeley'),
(10, 20, 'Jane Feinberg'),
(11, 20, 'Mike Fenton'),
(12, 20, 'Marci Liroff'),
(13, 21, 'Robert K. Weiss'),
(14, 21, 'Michael Chinich'),
(15, 21, 'Fran Roy'),
(16, 25, 'Roger Birnbaum'),
(17, 25, 'Jeff Apple'),
(18, 25, 'Gary Barber'),
(19, 27, 'Paul Cajero'),
(20, 27, 'David Mills'),
(21, 27, 'James L. Conway'),
(22, 27, 'Jonathan Levin'),
(23, 27, 'Doug Palau'),
(24, 27, 'Tony Palermo'),
(25, 27, 'Daniel Sackheim'),
(26, 27, 'Aaron Spelling'),
(27, 27, 'E. Duke Vincent'),
(28, 30, 'Al Weber'),
(29, 31, 'David Heyman'),
(30, 31, 'Susie Figgis'),
(31, 31, 'Janet Hirshenson'),
(32, 31, 'Jane Jenkins'),
(33, 31, 'Karen Lindsay-Stewart'),
(34, 32, 'Lawrence Gordon'),
(35, 35, 'Robert K. Weiss'),
(36, 35, 'Mike Hanks'),
(37, 35, 'Kim Jorgensen');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
CREATE TABLE IF NOT EXISTS `production` (
  `production_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `prod_co` varchar(50) NOT NULL,
  PRIMARY KEY (`production_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`production_id`, `mid`, `prod_co`) VALUES
(12, 18, 'Lucasfilm'),
(13, 18, 'Twentieth Century Fox Film Corporation'),
(14, 19, 'Universal Pictures'),
(15, 19, 'EMI Films Ltd.'),
(16, 20, 'Shaw Brothers'),
(17, 20, 'The Ladd Company'),
(18, 20, 'Warner Bros.'),
(19, 21, 'Universal Pictures'),
(20, 25, 'Spyglass Entertainment'),
(21, 31, 'Warner Bros.'),
(22, 31, 'Heyday Films'),
(23, 31, '1492 Pictures'),
(24, 32, 'Paramount Pictures'),
(25, 35, 'Kentucky Fried Theatre'),
(26, 36, 'Europa Corp.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `pwd`) VALUES
(NULL, 'rick', 'rick'),
(NULL, 'jaime', 'pwd');

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

DROP TABLE IF EXISTS `writers`;
CREATE TABLE IF NOT EXISTS `writers` (
  `wid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `wname` varchar(30) NOT NULL,
  `wjob` varchar(30) NOT NULL,
  PRIMARY KEY (`wid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`wid`, `mid`, `wname`, `wjob`) VALUES
(1, 18, 'George Lucas', 'Author'),
(2, 19, 'Michael Cimino', 'Screenplay'),
(3, 19, 'Deric Washburn', 'Screenplay'),
(4, 20, 'Hampton Fancher', 'Screenplay'),
(5, 20, 'David Webb Peoples', 'Screenplay'),
(6, 20, 'Philip K. Dick', 'Novel'),
(7, 21, 'John Landis', 'Author'),
(8, 21, 'Dan Aykroyd', 'Author'),
(9, 25, 'Roger Towne', 'Screenplay'),
(10, 25, 'Mitch Glazer', 'Screenplay'),
(11, 25, 'Kurt Wimmer', 'Screenplay'),
(12, 26, 'David Gilbert', 'Writer'),
(13, 31, 'J. K. Rowling', 'Novel'),
(14, 31, 'Steve Kloves', 'Screenplay'),
(15, 32, 'David Shaber', 'Screenplay'),
(16, 32, 'Sol Yurick', 'Screenplay'),
(17, 35, 'Jim Abrahams', 'Screenplay'),
(18, 35, 'Jerry Zucker', 'Author'),
(19, 35, 'David Zucker', 'Author'),
(20, 36, 'Douglas Kennedy', 'Writer'),
(21, 36, 'StÃ©phane Cabel', 'Writer');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `fk_cast_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `fk_crew_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `directors`
--
ALTER TABLE `directors`
  ADD CONSTRAINT `fk_directors_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movies_users` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producers`
--
ALTER TABLE `producers`
  ADD CONSTRAINT `fk_producers_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `production`
--
ALTER TABLE `production`
  ADD CONSTRAINT `fk_production_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `writers`
--
ALTER TABLE `writers`
  ADD CONSTRAINT `fk_writer_movies` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
