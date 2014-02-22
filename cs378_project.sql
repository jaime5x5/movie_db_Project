-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2014 at 07:28 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cs378_project`
--
CREATE DATABASE IF NOT EXISTS `cs378_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cs378_project`;

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE IF NOT EXISTS `cast` (
  `cast_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `actor` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`cast_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=238 ;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`cast_id`, `mid`, `actor`, `role`) VALUES
(1, 25, 'Alfred Hitchcock', 'Himself'),
(2, 25, 'Anny Ondra', 'Herself'),
(3, 27, 'Rod Perry', 'J. J.'),
(4, 27, 'Damu King', 'Diablo'),
(5, 27, 'Don Chastain', 'Tony Burton'),
(6, 27, 'Diane Sommerfield', 'Yvonne'),
(7, 27, 'Jimmy Witherspoon', 'Nate'),
(8, 27, 'Duncan McLeod', 'Lt. Joe Sterling'),
(9, 27, 'Tony Burton', 'Sonny Spyder Brown'),
(10, 27, 'Anny Green', 'Honey'),
(11, 27, 'John Alderman', 'Cockroach'),
(12, 27, 'Betsee Finlee', 'Junkie (as Betsy Finley)'),
(13, 27, 'Ken Bell', ''),
(14, 27, 'Cinque Attucks', 'Winston'),
(15, 27, 'Tom Scott', 'Newscaster'),
(16, 27, 'Ricardo Brown', 'Danny'),
(17, 27, 'Kathryn Jackson', 'Mrs. Brown'),
(18, 28, 'Michael Allan Bloom', 'Terry'),
(19, 28, 'Robert Bundy', 'Clayton'),
(20, 28, 'Paul Lueken', 'Dan'),
(21, 28, 'David Simpatico', 'Stevie'),
(22, 28, 'Cynthia Kahn', 'Cindi'),
(23, 28, 'Mari Laskarin', 'Theresa'),
(24, 28, 'Katharine Sullivan', 'Sally Ann'),
(25, 28, 'Vito D''Ambrosio', 'Guido'),
(26, 28, 'David Katz', 'The Boss'),
(27, 28, 'Cindy Frogberg', 'Gemini'),
(28, 28, 'Floyd May', 'Floyd'),
(29, 28, 'Karen Vaccaro', 'Nancy'),
(30, 29, 'Michael Haneke', 'Himself'),
(31, 29, 'Isabelle Huppert', 'Herself'),
(32, 29, 'Juliette Binoche', 'Herself'),
(33, 29, 'Emmanuelle Riva', 'Herself'),
(34, 29, 'Jean-Louis Trintignant', 'Himself'),
(35, 29, 'Susanne Lothar', 'Herself'),
(36, 29, 'BÃ©atrice Dalle', 'Herself'),
(37, 34, 'Kenny G', 'Himself'),
(38, 48, 'Al Pacino', 'Walter Burke'),
(39, 48, 'Colin Farrell', 'James Douglas Clayton'),
(40, 48, 'Bridget Moynahan', 'Layla Moore'),
(41, 48, 'Gabriel Macht', 'Zack'),
(42, 48, 'Kenneth Mitchell', 'Alan'),
(43, 48, 'Mike Realba', 'Ronnie'),
(44, 48, 'Karl Pruner', 'Dennis Slayne'),
(45, 48, 'Eugene Lipinski', 'Husky Man'),
(46, 49, 'Billy Crystal', 'Lionel Carpenter'),
(47, 49, 'Joan Prather', 'Segoynia Savaka'),
(48, 49, 'Doris Roberts', 'Mrs. Carpenter'),
(49, 49, 'Alex Rocco', 'Sgt. Danny Bonhoff'),
(50, 49, 'Roddy McDowall', 'Gypsy Grandmother / Dr. Fishbi'),
(51, 49, 'Imogene Coca', 'Madam Marie'),
(52, 49, 'Richard Deacon', 'Newscaster'),
(53, 49, 'Alice Ghostley', 'Nurse Tumm'),
(54, 49, 'George Gobel', 'President Of The United States'),
(55, 49, 'Fannie Flagg', 'First Lady'),
(56, 49, 'Norman Fell', 'Mr. Savaka'),
(57, 49, 'Paul Lynde', 'Dr. Vidal'),
(58, 49, 'Sheree North', 'Mystery Lady'),
(59, 49, 'Charlotte Rae', 'Claire'),
(60, 49, 'Jimmie Walker', 'Umbuto'),
(61, 49, 'Billy Barty', 'Lester'),
(62, 49, 'Keene Curtis', 'Dr. Lasse-Braun'),
(63, 49, 'Rosey Grier', 'Cabbie'),
(64, 49, 'Jane Connell', 'Anthropologist'),
(65, 49, 'Joan Rivers', 'Nurse'),
(66, 49, 'Charles Pierce', 'Queen Of England'),
(67, 49, 'Valerie Curtin', 'Pashima'),
(68, 49, 'Ron Rifkin', 'Dr. Briscoe'),
(69, 49, 'Jack Fletcher', 'The Pope'),
(70, 49, 'Melissa Rivers', 'Little Girl'),
(71, 50, 'Kurt Russell', 'R.J. MacReady'),
(72, 50, 'Wilford Brimley', 'Dr. Blair'),
(73, 50, 'T. K. Carter', 'Nauls'),
(74, 50, 'David Clennon', 'Palmer'),
(75, 50, 'Keith David', 'Childs'),
(76, 50, 'Richard A. Dysart', 'Dr. Copper'),
(77, 50, 'Charles Hallahan', 'Norris'),
(78, 50, 'Peter Maloney', 'Bennings'),
(79, 50, 'Richard Masur', 'Clark'),
(80, 50, 'Donald Moffat', 'Garry'),
(81, 50, 'Joel Polis', 'Fuchs'),
(82, 50, 'Thomas G. Waites', 'Windows'),
(83, 50, 'Jed', 'the dog'),
(162, 56, 'Kamal Hassan', 'Pammal K. Sambandam'),
(163, 56, 'Simran Bagga', 'Janaki'),
(164, 57, 'Olivia Hussey', ''),
(165, 57, 'Christopher Mitchum', ''),
(166, 58, 'Uday Chopra', 'Gurneal "Neal" Ahluwalia'),
(167, 58, 'Tanisha Mukherjee', 'Nikita ''Nikki'' Bakshi (as Tani'),
(168, 58, 'Abhishek Bachchan', 'Man in bar'),
(169, 58, 'Richa Pallod', 'Sweety'),
(170, 58, 'Gaurav Gera', 'Happy'),
(171, 58, 'Kamini Khanna', 'Baldev'),
(172, 58, 'Susheel Parashara', 'Gyaniji'),
(173, 58, 'Sanaa Abdu Khazal', 'Katrina'),
(174, 58, 'Zain Meghji', 'Friend 1'),
(175, 58, 'Garry Saran', 'Friend 2'),
(176, 58, 'Kristy McQuade', 'Kristy'),
(177, 58, 'Samantha McLeod', 'Chanel'),
(178, 58, 'Priya Sachdev', 'Karen'),
(179, 58, 'Alexandre Montez', 'Trish'),
(180, 58, 'Serinda Swan', 'Amanda'),
(181, 60, 'Prakash Raj', ''),
(182, 60, 'Santhanam', ''),
(183, 60, 'Kanja Karuppu', ''),
(184, 60, 'Jyothirmayi', ''),
(185, 60, 'Madhumitha', ''),
(186, 62, 'Wesley Snipes', 'Nino Brown'),
(187, 62, 'Ice-T', 'Scotty Appleton'),
(188, 62, 'Allen Payne', 'Garald "Gee Money" Welles'),
(189, 62, 'Chris Rock', 'Pookie'),
(190, 62, 'Mario Van Peebles', 'Stone'),
(191, 62, 'Michael Michele', 'Selina'),
(192, 62, 'Bill Nunn', 'Duh Duh Duh Man'),
(193, 62, 'Russell Wong', 'Park'),
(194, 62, 'Bill Cobbs', 'Old Man'),
(195, 62, 'Christopher Williams', 'Kareem Akbar'),
(196, 62, 'Judd Nelson', 'Nick Peretti'),
(197, 62, 'Tracy Camilla Johns', 'Uniqua'),
(198, 62, 'Anthony DeSando', 'Frankie Needles'),
(199, 62, 'Nick Ashford', 'Reverend Oates'),
(200, 62, 'Vanessa Williams', 'Keisha'),
(201, 62, 'Thalmus Rasulala', 'Police Commissioner'),
(202, 62, 'Flavor Flav', 'D.J.'),
(203, 68, 'David Duchovny', 'Dr. Benjamin Marris'),
(204, 68, 'Olivia Thirlby', 'Samantha Marris'),
(205, 68, 'Lili Taylor', 'Hannah Marris'),
(206, 68, 'Millie Tresierra', 'Lindsay Porter'),
(207, 68, 'Brandon Blue', 'Taylor''s boyfriend'),
(208, 68, 'Trisha LaFache', 'Taylor'),
(209, 68, 'Laurence Leboeuf', 'Amelia'),
(210, 68, 'Kathleen Mackey', 'Gothic Librarian'),
(211, 68, 'Corey Sevier', 'Justin'),
(212, 68, 'Brendan Sexton III', 'Ethan'),
(213, 69, 'Donald Pleasence', 'Dr. Sam Loomis'),
(214, 69, 'Jamie Lee Curtis', 'Laurie Strode'),
(215, 69, 'Nancy Kyes', 'Annie Brackett'),
(216, 69, 'P. J. Soles', 'Lynda van der Klok'),
(217, 69, 'Charles Cyphers', 'Sheriff Leigh Brackett'),
(218, 69, 'Kyle Richards', 'Lindsey Wallace'),
(219, 69, 'Brian Andrews', 'Tommy Doyle'),
(220, 69, 'John Michael Graham', 'Bob Simms'),
(221, 69, 'Nancy Stephens', 'Marion Chambers'),
(222, 69, 'Arthur Malet', 'Graveyard Keeper'),
(223, 69, 'Mickey Yablans', 'Richie'),
(224, 69, 'Brent Le Page', 'Lonnie Elamb'),
(225, 69, 'Adam Hollander', 'Keith'),
(226, 69, 'Robert Phalen', 'Dr. Terence Wynn'),
(227, 69, 'Tony Moran', 'Michael Myers'),
(228, 69, 'Will Sandin', 'Michael Myers (age 6)'),
(229, 69, 'Sandy Johnson', 'Judith Margaret Myers'),
(230, 69, 'David Kyle', 'Judith''s Boyfriend'),
(231, 69, 'Peter Griffith', 'Morgan Strode'),
(232, 69, 'Nick Castle', 'The Shape'),
(233, 69, 'Barry Bernardi', 'Dead Mechanic (uncredited)'),
(234, 69, 'John Carpenter', 'Paul, Annie''s Boyfriend (voice'),
(235, 69, 'George O''Hanlon Jr.', 'Mr. Peter Myers (uncredited)'),
(236, 69, 'Darla Rae', 'Student (uncredited)'),
(237, 69, 'Gwen Van Dam', 'Sanitarium Nurse (uncredited)');

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE IF NOT EXISTS `crew` (
  `crew_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cjob` varchar(30) NOT NULL,
  PRIMARY KEY (`crew_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`crew_id`, `mid`, `cname`, `cjob`) VALUES
(1, 48, 'Klaus Badelt', 'Original Music Composer'),
(2, 48, 'Stuart Dryburgh', 'Director of Photography'),
(3, 48, 'David Rosenbloom', 'Editor'),
(4, 50, 'Ennio Morricone', 'Original Music Composer'),
(5, 50, 'Dean Cundey', 'Director of Photography'),
(6, 50, 'Todd C. Ramsay', 'Editor'),
(7, 50, 'John J. Lloyd', 'Production Design'),
(8, 50, 'Henry Larrecq', 'Art Direction'),
(9, 50, 'John M. Dwyer', 'Set Decoration'),
(27, 60, 'Vidyasagar', 'Music'),
(28, 69, 'Dean Cundey', 'Director of Photography'),
(29, 69, 'Charles Bornstein', 'Editor'),
(30, 69, 'Tommy Lee Wallace', 'Editor'),
(31, 69, 'Tommy Lee Wallace', 'Production Design'),
(32, 69, 'Craig Stearns', 'Set Decoration'),
(33, 69, 'Erica Ulland', 'Makeup Artist'),
(34, 69, 'William L. Stevenson', 'Supervising Sound Editor'),
(35, 69, 'Conrad Rothmann', 'Special Effects'),
(36, 69, 'James Winburn', 'Stunts'),
(37, 69, 'John Carpenter', 'Original Music Composer');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

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
(1, 25, 'Alfred Hitchcock', 'Director'),
(2, 26, 'JÃ¶rg Kalt', 'Director'),
(3, 27, 'John Evans', 'Director'),
(4, 28, 'Sam Auster', 'Director'),
(5, 29, 'Yves Montmayeur', 'Director'),
(6, 48, 'Roger Donaldson', 'Director'),
(7, 49, 'Joan Rivers', 'Director'),
(8, 50, 'John Carpenter', 'Director'),
(11, 57, 'Philip Chalong', 'Director'),
(12, 58, 'Arjun Sablok', 'Director'),
(13, 59, 'Gabor Kalman', 'Director'),
(14, 60, 'Simbudevan', 'Director'),
(15, 62, 'Mario Van Peebles', 'Director'),
(16, 65, 'Joe Berlinger', 'Director'),
(17, 66, 'Yang Chuan', 'Director'),
(18, 68, 'Vincent PÃ©rez', 'Director'),
(19, 69, 'John Carpenter', 'Director');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `mid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `tmdbid` int(20) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `overview` text NOT NULL,
  `rel_date` date NOT NULL,
  `run_time` time NOT NULL,
  `imdbid` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `watched` tinyint(1) NOT NULL DEFAULT '0',
  `watched_date` date DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mid`, `uid`, `tmdbid`, `title`, `overview`, `rel_date`, `run_time`, `imdbid`, `notes`, `watched`, `watched_date`) VALUES
(23, 3, 235, 'dfdfdf', 'dfdfdfdf', '2014-02-06', '00:00:00', '', '', 0, NULL),
(24, 3, 25761, 'Crash Test', 'A writer is kidnapped and surgically transformed into a human crash test dummy.', '2003-01-01', '00:00:00', 'tt0407695', '', 1, '2014-02-22'),
(25, 3, 99601, 'Sound Test For Blackmail', 'When Alfred Hitchcock decided to shoot his thriller ''Blackmail'' in newfangled sound as well as a silent version, he was faced with a number of dilemmas. One of the biggest problems was with his leading lady, the Polish-Czech Anny Ondra, who had not been employed for the authenticity of her English accent.  This is the sound test that Hitchcock made. One of the results was that Ondra''s lines in the sound version were dubbed live, off-screen, by the rather more English-sounding Joan Barry.', '1929-01-01', '00:00:01', 'tt0249159', '', 0, NULL),
(26, 3, 16863, 'Crash Test Dummies', 'No overview found.', '2005-03-13', '00:00:00', 'tt0460756', '', 0, NULL),
(27, 3, 80755, 'The Black Godfather', 'The heroes in The Black Godfather are members of an African-American criminal organization. Like Brando in The Godfather, they''re not averse to robbery and murder, but they do draw the line at narcotics. When the Mafia infiltrates the ''hood with dangerous drugs, the Black Godfather (Rod Perry) orders his minions to put an end to this perfidy.', '1974-09-03', '00:00:00', 'tt0071225', '', 0, NULL),
(28, 3, 190913, 'Screen Test', 'A group of sex-crazy guys pose as porno filmmakers just to audition groups of lovelies in various states of undress. Eventually, they''re pressurized into coming up with an actual movie.', '1985-08-09', '00:00:00', 'tt0091909', '', 0, NULL),
(29, 3, 174353, 'Michael H - Profession: Direct', 'Over the past twenty-five years, director Michael Haneke has established himself as a towering figure in modern cinema whose rigorous focus on the craft of filmmaking has produced works of profound artistry. This career-spanning documentary gives unprecedented access and covers the body of Hanekeâ€™s work, offering insight into his creative process through on-set footage and interviews with the man himself and collaborators including Emmanuelle Riva, Isabelle Huppert and Juliette Binoche.', '2013-10-25', '00:00:00', 'tt2673724', '', 0, NULL),
(30, 3, 0, 'test', '', '1980-02-02', '00:01:35', '', '', 0, NULL),
(34, 3, 46322, 'Kenny G - Live', 'Kenny G first live album, recorded live at Humphrey''s Concerts By The Bay in San Diego, California. This DVD is the companion to the multi-Platinum album Kenny G Live.', '2001-02-20', '00:00:00', '', '', 0, NULL),
(48, 3, 1647, 'The Recruit', 'Of all the CIA operatives-in-training, James Clayton is the one young star agency veteran Walter Burke most wants to recruit. But James is far from grateful for the opportunity, even though he''s the sharpest in his class. Before James can officially become an officer, however, he must prove he''s worthy at the Farm, the CIA''s secret training grounds, where he learns to watch his back and trust no one but himself.', '2003-01-25', '00:01:15', 'tt0292506', '', 0, NULL),
(49, 3, 102841, 'Rabbit Test', 'Lionel''s life turns around after a one-night stand on top of a pinball table... he becomes the world''s first pregnant man!', '1978-04-09', '00:00:00', 'tt0078133', '', 0, NULL),
(50, 3, 1091, 'The Thing', 'Scientists in the Antarctic are confronted by a shape-shifting alien that assumes the appearance of the people that it kills.', '1982-06-25', '00:01:09', 'tt0084787', '', 0, NULL),
(55, 4, 0, 'test', '', '2001-02-02', '00:01:20', '', '', 0, '0000-00-00'),
(56, 3, 66344, 'Pammal K. Sambandam', 'A bachelor and a movie stuntman, Tamilian Pammal K. Sambandham, reprimands his brother, Anand, for hastily getting married to Malathi. He finds out that Malathi is being instigated by her single, male-hating friend, Janaki, who instructs her not to get intimate with Anand. Things only get worse after Pammal falls in love with Janaki, who not only dislikes him but also his profession, and is determined to ensure that this marriage ends in a divorce', '2002-01-15', '00:00:00', 'tt0422908', '', 1, '2014-02-22'),
(57, 3, 150622, 'H-Bomb', 'The world''s spy networks vie to get a stolen H bomb.', '1971-01-08', '00:00:00', 'tt0067171', '', 0, NULL),
(58, 3, 46415, 'Neal ''N'' Nikki', 'The film, as its name implies, centres on Gurneal "Neal" Ahluwalia and Nikkita "Nikki" Bakshi (Uday Chopra and Tanisha), two Canadians of Indian descent, born and raised in British Columbia. Before getting married Neal wants to spend one month on vacation in total freedom by meeting women, going to clubs...', '2005-12-09', '00:00:00', 'tt0470869', '', 0, NULL),
(59, 4, 226650, 'There Was Once...', 'This film is about a Catholic high school teacher in Kalocsa, Hungary who while doing research in local history discovers the lost Jewish community that once thrived there. She shares her research with her students, teaching tolerance, fighting prejudice. She organized a memorial for this lost community, which was attended by the Mayor, the Archbishop, several survivors and second and third generations. At the same time the neo-Nazi party of Hungary held a demonstration and a young girl visiting from New York was hit by a sling shot while attending a memorial service at the newly restored Jewish cemetery.', '2011-09-23', '00:01:03', 'tt1724987', '', 0, NULL),
(60, 4, 79663, 'Gadi No.305 Lo Devudu', 'Overview Coming Soon...', '2008-04-18', '00:00:00', 'tt5544718', '', 0, NULL),
(61, 5, 0, 'test movie', 'overview here', '2010-02-02', '00:03:22', '', 'notes here', 1, '2014-02-21'),
(62, 5, 10952, 'New Jack City', 'A gangster, Nino, is in the Cash Money Brothers, making a million dollars every week selling crack. A cop, Scotty, discovers that the only way to infiltrate the gang is to become a dealer himself.', '1991-03-08', '00:00:00', 'tt0102526', '', 0, NULL),
(65, 5, 246743, 'Whitey: United States of Ameri', 'WHITEY: United States of America v. James J. Bulger captures the sensational trial of infamous gangster James ''Whitey'' Bulger, using the legal proceedings as a springboard to explore allegations of corruption within the highest levels of law enforcement. Embedded for months with Federal Prosecutors, retired FBI and State Police, victims, lawyers, gangsters and journalists, Academy Award-nominated filmmaker Joe Berlinger examines Bulger''s relationship with the FBI and Department of Justice that allowed him to reign over a criminal empire in Boston for decades. Pulling back the curtain on long-held Bulger mythology, the film challenges conventional wisdom by detailing shocking, new allegations. With unprecedented access, Berlinger''s latest crime documentary offers a universal tale of human frailty, opportunism, deception, and the often elusive nature of truth and justice.', '2014-01-18', '00:01:30', 'tt3326366', '', 0, NULL),
(66, 5, 186920, 'Hell Has No Boundary', 'Story revolves around a possessed young police woman who seems to be out killing everyone who gets in her way. Her boyfriend, photographer and boss at work are all suspicious of her and are out to find out what''s the problem. With a story focusing on possession, vengeful spirits and murder, you''re steadily entertained with a flick that manages to keep it''s head above water.', '1982-06-04', '00:00:00', 'tt0084061', '', 0, NULL),
(67, 5, 0, 'this is a test', 'sdsdsd', '2014-02-06', '00:01:55', '', 'sdsdsd', 0, NULL),
(68, 4, 14432, 'The Secret', 'Husband, wife, and daughter have moved from Boston to Williamstown. At 16, Samantha treats her mother shabbily, but when the two of them are in a horrific car crash, the mother wills Sam to live, somehow losing her own life while her spirit enters Sam.', '2007-10-10', '00:00:00', 'tt0446463', '', 1, '2014-02-22'),
(69, 3, 948, 'Halloween', 'Michael Myers, who just escaped from a mental hospital, goes on a murderous rampage on Halloween night after returning to his hometown of Haddonfield, Ill. Inexplicably, his prize victim seems to be babysitter Laurie. Psychiatrist Dr. Loomis is on a mission to stop Myers in this slasher classic.', '1978-10-25', '00:00:00', 'tt0077651', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE IF NOT EXISTS `producers` (
  `pid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `producer_name` varchar(30) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`pid`, `mid`, `producer_name`) VALUES
(1, 48, 'Roger Birnbaum'),
(2, 48, 'Jeff Apple'),
(3, 48, 'Gary Barber'),
(4, 50, 'Stuart Cohen'),
(5, 50, 'David Foster'),
(6, 50, 'Larry J. Franco'),
(7, 50, 'Wilbur Stark'),
(8, 50, 'Anita Dann'),
(16, 60, 'S. Shankar'),
(17, 62, 'Doug McHenry'),
(18, 68, 'Luc Besson'),
(19, 69, 'Debra Hill'),
(20, 69, 'Don Behrns');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE IF NOT EXISTS `production` (
  `production_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `prod_co` varchar(50) NOT NULL,
  PRIMARY KEY (`production_id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`production_id`, `mid`, `prod_co`) VALUES
(1, 34, 'Arista Records'),
(2, 48, 'Spyglass Entertainment'),
(3, 50, 'Universal Pictures'),
(4, 50, 'David Foster Productions'),
(5, 50, 'Turman-Foster Company'),
(9, 62, 'Warner Bros. Pictures'),
(10, 66, 'Shaw Brothers'),
(11, 69, 'Compass Productions');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `pwd`) VALUES
(3, 'rick', 'rick'),
(4, 'bill', 'bill'),
(5, 'test', 'test'),
(6, 'brian', 'pass123'),
(7, 'stephen', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE IF NOT EXISTS `writers` (
  `wid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) unsigned NOT NULL,
  `wname` varchar(30) NOT NULL,
  `wjob` varchar(30) NOT NULL,
  PRIMARY KEY (`wid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`wid`, `mid`, `wname`, `wjob`) VALUES
(1, 28, 'Sam Auster', 'Writer'),
(2, 28, 'Laura Auster', 'Writer'),
(3, 48, 'Roger Towne', 'Screenplay'),
(4, 48, 'Mitch Glazer', 'Screenplay'),
(5, 48, 'Kurt Wimmer', 'Screenplay'),
(6, 50, 'Bill Lancaster', 'Screenplay'),
(11, 57, 'Pracha Poonviwat', 'Screenplay'),
(12, 58, 'Arjun Sablok', 'Writer'),
(13, 58, 'Anvita Dutt Guptan', 'Writer'),
(14, 62, 'Thomas Lee Wright', 'Screenplay'),
(15, 66, 'Cheung Tan-Shui', 'Writer'),
(16, 68, 'Ann Cherkis', 'Screenplay'),
(17, 68, 'Keigo Higashino', 'Author'),
(18, 68, 'Hiroshi SaitÃ´', 'Screenplay'),
(19, 69, 'Debra Hill', 'Screenplay'),
(20, 69, 'John Carpenter', 'Screenplay');

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
