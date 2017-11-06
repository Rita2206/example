-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Exportiere Datenbank Struktur für queryafe
CREATE DATABASE IF NOT EXISTS `queryafe` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `queryafe`;

-- Exportiere Struktur von Tabelle queryafe.sparqls
CREATE TABLE IF NOT EXISTS `sparqls` (
  `username` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK__users` (`username`),
  CONSTRAINT `FK__users` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle queryafe.sparqls: ~3 rows (ungefähr)
/*!40000 ALTER TABLE `sparqls` DISABLE KEYS */;
INSERT INTO `sparqls` (`username`, `type`, `text`, `title`, `id`) VALUES
	('test', 'SELECT', 'PREFIX rdf:	<http://www.w3.org/1999/02/22-rdf-syntax-ns#>\r\nPREFIX nm:	<http://nomisma.org/id/>\r\nPREFIX nmo:	<http://nomisma.org/ontology#>\r\nPREFIX skos:	<http://www.w3.org/2004/02/skos/core>\r\nPREFIX xsd:	<http://www.w3.org/2001/XMLSchema#>\r\nPREFIX rdfs:	<http://www.w3.org/2000/01/rdf-schema#>\r\nPREFIX dcterms: <http://purl.org/dc/terms/>\r\n\r\n\r\n\r\nselect ?coin where {\r\n	?coin nmo:hasObjectType nm:coin.\r\n	?coin nmo:hasMaterial nm:ar.\r\n} LIMIT 10', 'Silver', 5),
	('test', 'SELECT', 'PREFIX rdf:	<http://www.w3.org/1999/02/22-rdf-syntax-ns#>\r\nPREFIX nm:	<http://nomisma.org/id/>\r\nPREFIX nmo:	<http://nomisma.org/ontology#>\r\nPREFIX skos:	<http://www.w3.org/2004/02/skos/core>\r\nPREFIX xsd:	<http://www.w3.org/2001/XMLSchema#>\r\nPREFIX rdfs:	<http://www.w3.org/2000/01/rdf-schema#>\r\nPREFIX dcterms: <http://purl.org/dc/terms/>\r\n\r\n\r\n\r\nselect ?coin where {\r\n	?coin nmo:hasObjectType nm:coin.\r\n	?coin nmo:hasMaterial nm:av.\r\n} LIMIT 10', 'Gold', 6),
	('test1', 'SELECT', 'PREFIX rdf:	<http://www.w3.org/1999/02/22-rdf-syntax-ns#>\r\nPREFIX nm:	<http://nomisma.org/id/>\r\nPREFIX nmo:	<http://nomisma.org/ontology#>\r\nPREFIX skos:	<http://www.w3.org/2004/02/skos/core>\r\nPREFIX xsd:	<http://www.w3.org/2001/XMLSchema#>\r\nPREFIX rdfs:	<http://www.w3.org/2000/01/rdf-schema#>\r\nPREFIX dcterms: <http://purl.org/dc/terms/>\r\n\r\n\r\n\r\nselect ?coin where {\r\n	?coin nmo:hasObjectType nm:coin.\r\n	?coin nmo:hasDenomination nm:denarius .\r\n} LIMIT 10', 'denarius', 7);
/*!40000 ALTER TABLE `sparqls` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle queryafe.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL,
  `password` char(32) DEFAULT NULL,
  `registered` date DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle queryafe.users: ~2 rows (ungefähr)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`username`, `password`, `registered`) VALUES
	('test', '098f6bcd4621d373cade4e832627b4f6', '2017-02-05'),
	('test1', '5a105e8b9d40e1329780d62ea2265d8a', '2017-02-05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
