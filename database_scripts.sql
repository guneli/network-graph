CREATE TABLE `common_paper` (
  `rs_id1` int(11) DEFAULT NULL,
  `rs_id2` int(11) DEFAULT NULL,
  KEY `rs_id1` (`rs_id1`),
  KEY `rs_id2` (`rs_id2`),
  CONSTRAINT `common_paper_ibfk_1` FOREIGN KEY (`rs_id1`) REFERENCES `researchers` (`rs_id`),
  CONSTRAINT `common_paper_ibfk_2` FOREIGN KEY (`rs_id2`) REFERENCES `researchers` (`rs_id`)
)
CREATE TABLE `researchers` (
  `rs_id` int(11) NOT NULL AUTO_INCREMENT,
  `degree` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `id_scopus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rs_id`),
  UNIQUE KEY `id_scopus` (`id_scopus`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
