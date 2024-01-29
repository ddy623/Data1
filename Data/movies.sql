DROP SCHEMA IF EXISTS `movies`;
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8;
USE `movies`;


DROP TABLE IF EXISTS `genres`;
DROP TABLE IF EXISTS `title_basics`;
DROP TABLE IF EXISTS `title_genres`;
DROP TABLE IF EXISTS `title_ratings`;

CREATE TABLE `genres`  (
  `genre_id` int NOT NULL,
  `genre_name` varchar(45) NULL,
  PRIMARY KEY (`genre_id` DESC)
);

CREATE TABLE `title_basics`  (
  `tconst` varchar(15) NOT NULL,
  `primary_title` varchar(255) NULL,
  `start_year` Int NULL,
  `runtime` Int NULL,
  PRIMARY KEY (`tconst` DESC)
);

CREATE TABLE `title_genres`  (
  `genre_id` Int NOT NULL,
  `tconst` char(15) NULL
);

CREATE TABLE `title_ratings`  (
  `tconst` varchar(55) NOT NULL,
  `average_rating` varchar(45) NULL,
  `number_of_votes` int NULL,
  PRIMARY KEY (`tconst`)
);

