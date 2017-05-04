CREATE TABLE `listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `listing_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listingid` int(11) NOT NULL,
  `data` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `listingid` (`listingid`),
  CONSTRAINT `fk_listings_id` FOREIGN KEY (`listingid`) REFERENCES `listings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

