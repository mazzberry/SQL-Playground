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


CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `date_of_order` date NOT NULL,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `orders` VALUES (1,5,'2020-04-01');
INSERT INTO `orders` VALUES (2,4,'2020-04-01');
INSERT INTO `orders` VALUES (3,5,'2020-04-01');
INSERT INTO `orders` VALUES (4,5,'2020-04-01');
INSERT INTO `orders` VALUES (5,2,'2020-04-01');
INSERT INTO `orders` VALUES (6,1,'2020-04-01');



CREATE TABLE `order_items` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `order_items` VALUES (1,7,10,12000);
INSERT INTO `order_items` VALUES (1,9,6,23000);
INSERT INTO `order_items` VALUES (1,8,12,10000);
INSERT INTO `order_items` VALUES (2,10,2,12000);
INSERT INTO `order_items` VALUES (3,3,9,51000);
INSERT INTO `order_items` VALUES (4,4,16,85000);
INSERT INTO `order_items` VALUES (5,5,5,35000);
INSERT INTO `order_items` VALUES (6,6,9,31000);
INSERT INTO `order_items` VALUES (6,8,8,12000);


CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `body` varchar(500) NOT NULL,
  `parent` int(11) NULL,
  `date_of_creation` date NOT NULL,
  PRIMARY KEY (`comment_id`),
  CONSTRAINT `fk_comments_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_comments_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `comments` VALUES (1,1,1,'hello1-1',NULL,'2020-04-01');
INSERT INTO `comments` VALUES (2,3,2,'hello3-2',NULL,'2021-04-02');
INSERT INTO `comments` VALUES (3,1,4,'hello1-4',NULL,'2022-04-03');
INSERT INTO `comments` VALUES (4,2,1,'hello2-1',NULL,'2023-04-04');
INSERT INTO `comments` VALUES (5,1,5,'hello1-5',1,'2022-04-03');
INSERT INTO `comments` VALUES (6,3,4,'hello1-4',2,'2022-04-03');


