/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.24 : Database - shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopping` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `shopping`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`creationDate`,`updationDate`) values (1,'admin','Test@1234','2017-01-24 22:21:18','26-07-2019 04:24:54 PM');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`categoryName`,`categoryDescription`,`creationDate`,`updationDate`) values (1,'Electronics','lorem 5 lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5','2019-07-26 17:46:03',NULL),(2,'Food','sjhfaskfhdfh','2019-08-30 19:48:21',NULL);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`id`,`userId`,`productId`,`quantity`,`orderDate`,`paymentMethod`,`orderStatus`) values (7,4,'1',1,'2019-07-26 17:48:14','Debit / Credit card','Delivered'),(8,4,'2',2,'2019-08-30 21:25:16','Internet Banking','Delivered'),(9,4,'2',1,'2019-08-31 21:42:10','COD','Delivered'),(10,1,'2',1,'2019-08-31 22:01:39','COD',NULL);

/*Table structure for table `ordertrackhistory` */

DROP TABLE IF EXISTS `ordertrackhistory`;

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `ordertrackhistory` */

insert  into `ordertrackhistory`(`id`,`orderId`,`status`,`remark`,`postingDate`) values (5,7,'Delivered','done','2019-07-26 17:49:08'),(6,8,'Delivered','paid','2019-08-30 21:51:56'),(7,9,'in Process','ok','2019-08-31 21:43:06'),(8,9,'Delivered','done','2019-08-31 22:02:00');

/*Table structure for table `productreviews` */

DROP TABLE IF EXISTS `productreviews`;

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `productreviews` */

insert  into `productreviews`(`id`,`productId`,`quality`,`price`,`value`,`name`,`summary`,`review`,`reviewDate`) values (5,2,5,5,5,'sahabuddin','sadS','sXSCS','2019-07-26 23:09:35'),(6,2,5,5,5,'Sahab uddin','sad','sdas','2019-08-29 22:51:26');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`category`,`subCategory`,`productName`,`productCompany`,`productPrice`,`productPriceBeforeDiscount`,`productDescription`,`productImage1`,`productImage2`,`productImage3`,`shippingCharge`,`productAvailability`,`postingDate`,`updationDate`) values (1,1,1,'Smart Android Telivision','Samsung',27000,28000,'lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5lorem 5','micromax main image.jpg','micromax1.jpeg','micromax2.jpeg',1000,'In Stock','2019-07-26 17:46:54',NULL),(2,2,2,'Chicken Fizza','KFC',700,700,'Order food from the best restaurants with foodpanda Bangladesh\r\n\r\nAre you hungry? Did you have a long and stressful day? Interested in getting a cheesy pizza delivered to your home or office? Then foodpanda Bangladesh is the right destination for you! foodpanda offers you a long and detailed list of the best restaurants and local favourites near you to help satisfy your hunger through our online food delivery service. Cuisines are diverse: whether you fancy a juicy burger from Takeout, fresh sushi from Samdado or peri peri chicken from Nando\'s, foodpanda Bangladesh has a wide range of 2000+ restaurants available from Dhaka, to Chittagong through to Sylhet. From a healthy lunch to evening snacks to a hearty dinner, foodpanda provides you with the means to satisfy your cravings throughout the day. Sit back and relax - let foodpanda Bangladesh take the pressure off your shoulders.','fizza1.png','fizza2.png','fizza3.png',100,'In Stock','2019-08-31 21:56:11',NULL);

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `subcategory` */

insert  into `subcategory`(`id`,`categoryid`,`subcategory`,`creationDate`,`updationDate`) values (1,1,'Smart TV','2019-07-26 17:46:09',NULL),(2,2,'fizza','2019-08-30 19:48:51',NULL);

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert  into `userlog`(`id`,`userEmail`,`userip`,`loginTime`,`logout`,`status`) values (24,'sahabuddinriyaj984@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2019-07-26 17:48:09',NULL,1),(25,'sahabuddinriyaj984@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2019-08-30 21:24:59','30-08-2019 09:42:31 PM',1),(26,'sahabuddinriyaj984@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2019-08-31 21:41:54',NULL,0),(27,'sahabuddinriyaj984@gmail.com','::1\0\0\0\0\0\0\0\0\0\0\0\0\0','2019-08-31 21:42:04',NULL,1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`contactno`,`password`,`shippingAddress`,`shippingState`,`shippingCity`,`shippingPincode`,`billingAddress`,`billingState`,`billingCity`,`billingPincode`,`regDate`,`updationDate`) values (4,'sahabuddin','sahabuddinriyaj984@gmail.com',1867033550,'f6a97ee645c477568a50db2ba67717ec',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-26 17:47:58',NULL);

/*Table structure for table `wishlist` */

DROP TABLE IF EXISTS `wishlist`;

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `wishlist` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
