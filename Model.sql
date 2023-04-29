CREATE TABLE `MODEL` (
  `ModelId` INT NOT NULL,
  `ModelType` VARCHAR(255) NOT NULL,
  `ModelColor` VARCHAR(255) DEFAULT NULL,
  `ModelMaterial` VARCHAR(255) DEFAULT NULL,
  `ModelSize` VARCHAR(255) NOT NULL,
  `Price` INT NOT NULL,
  `Discount` INT DEFAULT NULL,
  PRIMARY KEY (`ModelId`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `MODEL` (`ModelId`,`ModelType`,`ModelColor`,`ModelMaterial`,`ModelSize`,`Price`,`Discount`) VALUES
(131,'t-shirt','dark blue','nylon','S',599,NULL),
(132,'t-shirt','olive green','nylon','S',619,NULL),
(133,'t-shirt','dark blue','nylon','M',599,NULL),
(134,'t-shirt','olive green','nylon','L',619,NULL),
(135,'pants','grey','spandex','L',999,100),
(136,'pants','black','spandex','L',999,100),
(137,'cardigan','black','acrylic','S',1099,NULL),
(138,'cardigan','black','acrylic','M',1099,NULL),
(139,'cardigan','black','acrylic','L',1099,NULL),
(140,'cardigan','black','acrylic','XL',1099,NULL),
(141,'cardigan','white','woolen','S',1010,NULL),
(142,'cardigan','white','woolen','L',1010,NULL),
(143,'cardigan','brown','woolen','M',1010,NULL),
(144,'cardigan','brown','cotton','S',1100,NULL),
(145,'cardigan','brown','cotton','M',1100,NULL),
(146,'cardigan','brown','cotton','L',1100,NULL),
(147,'cardigan','brown','acrylic','M',1099,NULL),
(148,'cardigan','brown','acrylic','L',1099,NULL),
(149,'crop top','green','cotton','S',699,NULL),
(150,'crop top','green','cotton','M',699,NULL),
(151,'crop top','green','cotton','L',699,NULL),
(152,'crop top','green','cotton','XL',699,NULL),
(153,'crop top','red','cotton','S',799,NULL),
(154,'crop top','red','cotton','L',799,NULL),
(155,'crop top','red','cotton','M',799,NULL),
(156,'crop top','blue','cotton','S',619,NULL),
(157,'crop top','blue','cotton','M',619,NULL),
(158,'crop top','blue','cotton','L',619,NULL),
(159,'crop top','pink','cotton','S',659,NULL),
(160,'crop top','pink','cotton','M',659,NULL),
(161,'crop top','pink','cotton','L',659,NULL),
(162,'tank top','black','cotton','S',899,NULL),
(163,'tank top','black','cotton','L',899,NULL),
(164,'tank top','orange','acrylic','S',919,NULL),
(165,'tank top','orange','acrylic','L',919,NULL),
(166,'tank top','orange','acrylic','M',919,NULL),
(167,'shirt','black','linen','S',1149,200),
(168,'shirt','black','linen','M',1149,200),
(169,'shirt','black','linen','L',1149,200),
(170,'shirt','white','linen','S',1159,200),
(171,'shirt','white','linen','L',1159,200),
(172,'shirt','white','linen','XL',1159,200),
(173,'shirt','dark blue','rayon','M',1149,NULL),
(174,'shirt','dark blue','rayon','L',1149,NULL),
(175,'shirt','dark blue','cotton','S',1110,NULL),
(176,'shirt','dark blue','cotton','L',1110,NULL),
(177,'blazer','black','cotton','L',1500,NULL),
(178,'blazer','black','wool','S',1670,NULL),
(179,'blazer','black','wool','L',1670,NULL),
(180,'pants','black','jeans','XS',1200,200),
(181,'pants','black','jeans','S',1200,200),
(182,'pants','black','jeans','M',1200,200),
(183,'pants','black','jeans','L',1200,200),
(184,'pants','black','jeans','XL',1200,200),
(185,'pants','black','jeans','XS',1200,200),
(186,'jogger','grey','cotton','XS',1500,NULL),
(187,'jogger','grey','cotton','XL',1500,NULL);
COMMIT;
