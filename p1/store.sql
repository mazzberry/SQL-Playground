DROP DATABASE IF EXISTS `store`;
CREATE DATABASE `store`;
USE `store`;

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `unit_price` int(11) NULL,
  `unit_price_after_discount` int(11) NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `products` VALUES (1,'iPhone 16',100000000,100000000);
INSERT INTO `products` VALUES (2,'King Size Bed',16000000,15500000);
INSERT INTO `products` VALUES (3,'Cheetoz',50000,50000);
INSERT INTO `products` VALUES (4,'Mohafez',85000,79000);
INSERT INTO `products` VALUES (5,'CocaCola',35000,31000);
INSERT INTO `products` VALUES (6,'Coffee',31000,29000);
INSERT INTO `products` VALUES (7,'Black wood desk',Null,Null);
INSERT INTO `products` VALUES (8,'Pen',11000,10000);
INSERT INTO `products` VALUES (9,'Colored Paper',23000,20000);
INSERT INTO `products` VALUES (10,'Wrong Price',12000,41000);

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `province` char(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customers` VALUES (1,'Ali','Alavi','Isfahan','Isfaddr1','09131313131','1995-04-01');
INSERT INTO `customers` VALUES (2,'Sara','Sari','Tehran','Tehaddr','09121091321','2002-07-01');
INSERT INTO `customers` VALUES (3,'Firooz','Firoozeh','Shiraz','Shiraddr','09101010101','1990-01-04');
INSERT INTO `customers` VALUES (4,'Narges','Narani','Tabriz','Tabaddr','09202020202','1996-01-01');
INSERT INTO `customers` VALUES (5,'Ana','Nahidi','Isfahan','Isfaddr2','09131313132','2010-01-01');