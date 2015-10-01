
CREATE SCHEMA `inventory` ;

CREATE TABLE inventory.users (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `createdDate` date DEFAULT NULL,
  `updatedDate` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `authenticate`boolean,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE inventory.products (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productCode` varchar(255) NOT NULL,
  `productName` varchar(255),
  `productType` varchar(255),
  `sellingRate` DECIMAL(10,2),
  `costRate` DECIMAL(10,2),
  `createdDate` date DEFAULT NULL,
  `updatedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE inventory.accounts (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `outstandingBalance` DECIMAL(10,2),
  `debit` DECIMAL(10,2),
  `credit` DECIMAL(10,2),
  `createdDate` date DEFAULT NULL,
  `updatedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE inventory.recipes (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipeName` varchar(255),
  `yield` DECIMAL(10,2),
  `units` varchar(255),
  `createdDate` date DEFAULT NULL,
  `updatedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE inventory.recipeIngredients (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipesId` int(10) unsigned NOT NULL,
  `productName` varchar(255),
  `quantity` DECIMAL(10,3),
  `units` varchar(255),
  `rate` DECIMAL(10,2), 
  `amount` DECIMAL(10,2),
  `createdDate` date DEFAULT NULL,
  `updatedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`recipesId`) references inventory.recipes(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
