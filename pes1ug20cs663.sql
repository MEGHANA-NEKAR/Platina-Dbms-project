
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `MANUFACTURER` (
  `M_id` VARCHAR(255) NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL
  PRIMARY KEY (`M_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `MANUFACTURER` (`M_id`, `Name`,'Email','Contact','City') VALUES
('M1','Aanya','aanya2@gmail.com','8475877845','Bengaluru'),
('M2','Arohi','arohi723@gmail.com','8475465734','Chennai'),
('M3','Shaden','21sha@gmail.com','7463577849','Bengaluru'),
('M4','Zen','7zen@gmail.com','9674877863','Mumbai'),
('M5','Abhishek','9abhi@gmail.com','7535877866','Chennai'),
('M6','Jay','j1y@gmail.com','9135877845','Bengaluru'),
('M7','Gowri','gowri9@gmail.com','8793877811','Mumbai'),
('M8','Jyothi','jo1@gmail.com','7793877806','Delhi'),
('M9','Aishwarya','aish01@gmail.com','8865279256','Hydrabad'),
('M10','Rithwik','re331@gmail.com','9135874379','Hydrabad');


CREATE TABLE `WAREHOUSE` (
  `branch_id` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`branch_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO 'WAREHOUSE' (`branch_id`,`city`) VALUES 
('W1','bengaluru'),
('W2','mumbai'),
('W3','chennai'),
('W4','bengaluru'),
('W5','hydrabad'),
('W6','delhi'),
('W7','mangalore');


CREATE TABLE `MODEL` (
  `Model_id` INT NOT NULL,
  `Model_type` VARCHAR(255) NOT NULL,
  `Model_color` VARCHAR(255) DEFAULT NULL,
  `Model_material` VARCHAR(255) DEFAULT NULL,
  `Model_size` VARCHAR(255) NOT NULL,
  `Price` INT NOT NULL,
  `Discount` INT DEFAULT NULL,
  PRIMARY KEY (`Model_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO 'MODEL' ('Model_id',`Model_type`,`Model_color`,`Model_material`,`Model_size`,`Price`,`Discount`) VALUES
(131,'t-shirt','dark blue','nylon','S',599,NULL),
(132,'t-shirt','olive green','nylon','S',599,NULL),
(133,'t-shirt','dark blue','nylon','M',599,NULL),
(134,'t-shirt','olive green','nylon','L',599,NULL),
(135,'pants','grey','spandex','L',999,100),
(136,'pants','black','spandex','L',999,100),
(137,'cardigan','black','acrylic','S',1099,NULL),
(138,'cardigan','black','acrylic','M',1099,NULL),
(139,'cardigan','black','acrylic','L',1099,NULL),
(140,'cardigan','black','acrylic','XL',1099,NULL),
(141,'cardigan','white','woolen','S',1099,NULL),
(142,'cardigan','white','woolen','L',1099,NULL),
(143,'cardigan','brown','woolen','M',1099,NULL),
(144,'cardigan','brown','cotton','S',1099,NULL),
(145,'cardigan','brown','cotton','M',1099,NULL),
(146,'cardigan','brown','cotton','L',1099,NULL),
(147,'cardigan','brown','acrylic','M',1099,NULL),
(148,'cardigan','brown','acrylic','L',1099,NULL),
(149,'crop top','green','cotton','S',699,NULL),
(150,'crop top','green','cotton','M',699,NULL),
(151,'crop top','green','cotton','L',699,NULL),
(152,'crop top','green','cotton','XL',699,NULL),
(153,'crop top','red','cotton','S',699,NULL),
(154,'crop top','red','cotton','L',699,NULL),
(155,'crop top','red','cotton','M',699,NULL),
(156,'crop top','blue','cotton','S',699,NULL),
(157,'crop top','blue','cotton','M',699,NULL),
(158,'crop top','blue','cotton','L',699,NULL),
(159,'crop top','pink','cotton','S',699,NULL),
(160,'crop top','pink','cotton','M',699,NULL),
(161,'crop top','pink','cotton','L',699,NULL),
(162,'tank top','black','cotton','S',899,NULL),
(163,'tank top','black','cotton','L',899,NULL),
(164,'tank top','orange','acrylic','S',899,NULL),
(165,'tank top','orange','acrylic','L',899,NULL),
(166,'tank top','orange','acrylic','M',899,NULL),
(167,'shirt','black','linen','S',1149,200),
(168,'shirt','black','linen','M',1149,200),
(169,'shirt','black','linen','L',1149,200),
(170,'shirt','white','linen','S',1149,200),
(171,'shirt','white','linen','L',1149,200),
(172,'shirt','white','linen','XL',1149,200),
(173,'shirt','dark blue','rayon','M',1149,NULL),
(174,'shirt','dark blue','rayon','L',1149,NULL),
(175,'shirt','dark blue','cotton','S',1110,NULL),
(176,'shirt','dark blue','cotton','L',1110,NULL),
(177,'blazer','black','cotton','L',1500,NULL),
(178,'blazer','black','wool','S',1500,NULL),
(179,'blazer','black','wool','L',1500,NULL),
(180,'pants','black','jeans','XS',1200,200),
(181,'pants','black','jeans','S',1200,200),
(182,'pants','black','jeans','M',1200,200),
(183,'pants','black','jeans','L',1200,200),
(184,'pants','black','jeans','XL',1200,200),
(185,'pants','black','jeans','XS',1200,200),
(186,'jogger','grey','cotton','XS',1200,NULL),
(187,'jogger','grey','cotton','XL',1200,NULL);




CREATE TABLE `CUSTOMER` (
  `Cust_id` VARCHAR(255) NOT NULL,
  `Cust_First_Name` VARCHAR(255) NOT NULL,
  `Cust_Last_Name` VARCHAR(255) DEFAULT NULL,
  `Date_of_birth` DATE DEFAULT NULL,
  `Gender` VARCHAR(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Branch_id` INT NOT NULL,
  'City' varchar(255) NOT NULL,
  PRIMARY KEY (`Cust_id`),
  FOREIGN KEY (`Branch_id`) REFERENCES `WAREHOUSE`(`branch_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO 'CUSTOMER' (`Cust_id`,`Cust_First_Name`,`Cust_Last_Name`,`Date_of_birth`,`Gender`,`Email`,`Contact`,`Branch_id`) VALUES
('C1','James','Bond','1981-06-19','Male','james3@gmail.com','7834537894',1,'Bengaluru'),
('C2','Ishana','Agarwal','1999-05-09','Female','ishhh5@gmail.com','7836384921',2,'Hydrabad'),
('C3','Abhilash','Bhatt','1999-06-11','Male','abhilash843@gmail.com','9834537833',2,'Mumbai'),
('C4','Arjun','Reddy','1999-12-01','Male','reddy672@gmail.com','8345378821',3,'Bengaluru'),
('C5','Anaisha','Agarwal','2001-02-23','Female','anai123@gmail.com','9034537863',3,'Mumbai'),
('C6','Dhruv','Varma','2001-03-19','Male','d123456789@gmail.com','6234537894',4,'Hydrabad'),
('C7','Aditya','Chowdhury','2002-07-15','Male','chowd456@gmail.com','9934537855',4,'Delhi'),
('C8','Kaia','Kohli','2003-08-25','Female','kai98765@gmail.com','9134537893',5,'Mangalore'),
('C9','Sathwik','Reddy','1998-05-09','Male','saithwik674@gmail.com','8734537583',5,'Pondicherry'),
('C10','Ananya','Malhotra','2003-11-07','Female','ananya436@gmail.com','78345387723',5,'Ballari');


CREATE TABLE `PAYMENT_INFORMATION` (
  `Record_id` VARCHAR(255) NOT NULL,
  `Mode_of_payment` VARCHAR(255) NOT NULL,
  `Transaction_status` VARCHAR(255) NOT NULL,
  `Total_price` INT DEFAULT NULL,
  `Quantity_of_products` INT DEFAULT NULL,
  `Date_of_transaction` DATE DEFAULT NULL,
  `Time_of_transaction` TIME DEFAULT NULL,
  `Branch_id` INT NOT NULL,
  `C_id` INT NOT NULL,
  PRIMARY KEY (`Record_id`),
  FOREIGN KEY (`C_id`) REFERENCES `CUSTOMER`(`Cust_id`),
  FOREIGN KEY (`Branch_id`) REFERENCES `WAREHOUSE`(`branch_id`),
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `PAYMENT_INFORMATION`(`Record_id`,`Mode_of_payment`,`Transaction_status`,`Total_price`,`Quantity_of_products`,`Date_of_transaction`,`Time_of_transaction`,'Branch_id',`C_id`) VALUES
('R1','credit card','Success',,3,'2022-11-16','20:15','W1','C1'),
('R2','credit card','Success',,2,'2022-11-01','15:15','W5','C2'),
('R3','debit card','Success',,9,'2022-01-18','13:18','W2','C3'),
('R4','debit card','Success',,1,'2022-05-20','14:47','W4','C4'),
('R5','debit card','Failure',,4,'2022-08-15','11:23','W2','C5'),
('R6','cash on delivery','Success',,5,'2022-09-30','21:22','W5','C6'),
('R7','cash on delivery','Success',,8,'2022-06-25','21:22','W6','C7'),
('R8','UPI','Success',,4,'2022-10-27','00:15','W7','C8'),
('R9','UPI','Failure',,6,'2022-06-13','09:15','W3','C9'),
('R10','credit card','Success',,3,'2022-11-17','10:15','W1','C10'),
('R11','credit card','Success',,1,'2022-11-17','20:15','W4','C10');


CREATE TABLE 'TRANSACTION_WAREHOUSE_MANUFACTURER'(
  `Register_id` VARCHAR(255) NOT NULL,
  `Branch_id` VARCHAR(255) NOT NULL,
  `M_id` VARCHAR(255) NOT NULL,
  `Model_id` VARCHAR(255) NOT NULL,
  'Quantity' INT NOT NULL
  FOREIGN KEY (`Model_id`) REFERENCES `MODEL`(`Model_id`),
  FOREIGN KEY (`Branch_id`) REFERENCES `WAREHOUSE`(`branch_id`),
  FOREIGN KEY (`M_id`) REFERENCES `MANUFACTURER`(`M_id`),
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO 'TRANSACTION_WAREHOUSE_MANUFACTURER'(`Register_id`,`Branch_id`,`M_id`,`Model_id`,'Quantity') VALUES
('I1','W1','M1',131,100),
('I1','W1','M1',137,200),
('I1','W1','M1',145,200),
('I1','W1','M1',149,200),
('I1','W1','M3',151,200),
('I1','W1','M3',158,200),
('I1','W1','M3',171,200),
('I1','W2','M4',167,200),
('I1','W2','M4',178,200),
('I1','W2','M4',183,200),
('I1','W2','M4',184,200),
('I1','W2','M4',187,200),
('I1','W2','M4',141,200),
('I1','W2','M7',170,150),
('I1','W2','M7',164,150),
('I1','W2','M7',162,150),
('I1','W2','M7',144,150),
('I1','W2','M7',132,150),
('I1','W2','M7',187,150),
('I1','W2','M7',176,150),
('I1','W3','M2',174,250),
('I1','W3','M2',177,250),
('I1','W3','M2',131,250),
('I1','W3','M5',134,300),
('I1','W3','M5',155,450),
('I1','W3','M5',131,250),
('I1','W4','M3',162,180),
('I1','W4','M3',185,250),
('I1','W4','M3',148,300),
('I1','W4','M6',139,300),
('I1','W4','M1',140,450),
('I1','W5','M9',173,450),
('I1','W5','M9',133,180),
('I1','W5','M9',138,250),
('I1','W5','M9',143,450),
('I1','W5','M10',147,177),
('I1','W5','M10',149,500),
('I1','W5','M10',135,420),
('I1','W6','M8',171,420),
('I1','W6','M8',176,180),
('I1','W6','M8',160,370),
('I1','W6','M8',163,300),
('I1','W6','M8',135,250),
('I1','W6','M8',141,300),
('I1','W6','M8',142,177),
('I1','W6','M8',168,500),
('I1','W7','M1',159,370),
('I1','W7','M1',161,270),
('I1','W7','M1',164,290),
('I1','W7','M1',172,320),
('I1','W7','M1',164,500);


CREATE TABLE `PROVIDES_SUPPLY` (
  `Branch_id` INT NOT NULL,
  `Manufacturer_id` INT NOT NULL,
  FOREIGN KEY (`Branch_id`) REFERENCES `WAREHOUSE`(`branch_id`),
  FOREIGN KEY (`Manufacturer_id`) REFERENCES `MANUFACTURER`(`M_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `PROVIDES_SUPPLY`(`Branch_id`,`Manufacturer_id`) VALUES
('W1','M1'),('W1','M3'),('W2','M4'),('W2','M7'),('W3','M2'),
('W3','M5'),('W4','M3'),('W4','M6'),('W4','M1'),('W5','M9'),
('W5','M10'),('W6','M8'),('W7','M1');


CREATE TABLE `STAFF` (
  `S_id` VARCHAR(255) NOT NULL,
  `S_name` VARCHAR(255) NOT NULL,
  `Gender` VARCHAR(30) DEFAULT NULL,
  `Date_of_birth` DATE DEFAULT NULL,
  `S_role` VARCHAR(255) NOT NULL,
  `S_salary` INT DEFAULT NULL,
  `S_city` VARCHAR(255) DEFAULT NULL,
  `Branch_id` INT NOT NULL,
  `Super_sid` INT NOT NULL,
  PRIMARY KEY (`S_id`),
  FOREIGN KEY (`Branch_id`) REFERENCES `WAREHOUSE`(`branch_id`),
  FOREIGN KEY (`S_id`) REFERENCES `STAFF`(`Super_sid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO 'STAFF'(`S_id`,`S_name`,`Gender`,`Date_of_birth`,`S_role`,`S_salary`,`S_city`,`Branch_id`,`Super_sid`) VALUES
('S1','Sophia','Female','12-3-1999','Warehouse Associate',25000,'Bengaluru','W1','S9'),
('S2','Ajit','Male','19-8-1998','Warehouse Associate',35000,'Bengaluru','W1','S9'),
('S3','Anjali','Female','12-3-1999','Warehouse Processing Supervisor',55000,'Hydrabad','W5','S3'),
('S4','Aravinda','Female','12-3-1999','Warehouse Associate',25000,'Hydrabad','W5','S3'),
('S5','Arnav','Male','12-3-1999','Warehouse Associate',25000,'Mumbai','W2','S9'),
('S6','Aditi','Female','12-3-1999','Warehouse Associate',25000,'Mumbai','W2','S9'),
('S7','Devanand','Male','12-3-1999','Warehouse Associate',25000,'Delhi','W6','S3'),
('S8','Hansa','Female','12-3-1999','Warehouse Associate',25000,'Delhi','W6','S3'),
('S9','Karthik','Male','12-3-1999','Warehouse Processing Supervisor',55000,'Chennai','W3','S9'),
('S10','Leela','Female','12-3-1999','Warehouse Associate',25000,'Chennai','W3','S9'),
('S11','Manas','Male','12-3-1999','Warehouse Associate',25000,'Mangalore','W7','S3'),
('S12','Nitesh','Male','12-3-1999','Warehouse Associate',25000,'Mangalore','W7','S3'),
('S13','Asmita','Female','19-8-1998','Warehouse Associate',35000,'Bengaluru','W4','S9'),
('S14','Ekta','Female','19-8-1998','Warehouse Associate',35000,'Bengaluru','W4','S9');



CREATE TABLE `STORES_RECORDS_OF_MODELS` (
  `Record_id` INT NOT NULL,
  `Model_id` INT NOT NULL,
  FOREIGN KEY (`Model_id`) REFERENCES `MODEL`(`Model_id`),
  FOREIGN KEY (`Record_id`) REFERENCES `PAYMENT_INFORMATION`(`Record_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `STORES_RECORDS_OF_MODELS` (`Record_id`,`Model_id`) VALUES 
('R1',131),('R1',137),('R1',151),('R2',180),('R2',173),('R3',167),
('R3',170),('R3',178),('R3',183),('R3',164),('R3',162),('R3',144),
('R3',141),('R3',132),('R4',139),('R5',184),('R5',187),('R5',187), 
('R5',176),('R6',133),('R6',138),('R6',143),('R6',147),('R6',149), 
('R7',160),('R7',163),('R7',135),('R7',141),('R7',142),('R7',168),
('R7',171),('R7',176),('R8',159),('R8',161),('R8',164),('R8',172),
('R9',174),('R9',177),('R9',139),('R9',134),('R9',155),('R9',142),
('R10',145),('R10',149),('R10',158),('R11',162);



CREATE TABLE `STORES` (
  `Model_id` INT NOT NULL,
  `Branch_id` INT NOT NULL,
  `Quantity` INT NOT NULL,
  FOREIGN KEY (`Branch_id`) REFERENCES `WAREHOUSE`(`branch_id`),
  FOREIGN KEY (`Model_id`) REFERENCES `MODEL`(`Model_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `STORES` (`Model_id`,`Branch_id`,`Quantity`) VALUES
(131,'W1',300),
(131,'W1',300),
(131,'W1',300),
(131,'W1',300),
(131,'W1',300),
(131,'W1',300),
(131,'W1',300),


CREATE TABLE `MANUFACTURES` (
  `Manufacturer_id` INT NOT NULL,
  `Model_id` INT NOT NULL,
  `M_Quantity` INT NOT NULL,
  FOREIGN KEY (`Manufacturer_id`) REFERENCES `MANUFACTURER`(`M_id`),
  FOREIGN KEY (`Model_id`) REFERENCES `MODEL`(`Model_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `MANUFACTURES` (`Manufacturer_id`,`Model_id`,`M_Quantity`) VALUES


CREATE TABLE `ORDERED_BY` (
  `Model_id` INT NOT NULL,
  `Customer_id` INT NOT NULL,
  `Number_of_items` INT DEFAULT NULL,
  FOREIGN KEY (`Customer_id`) REFERENCES `CUSTOMER`(`Cust_id`),
  FOREIGN KEY (`Model_id`) REFERENCES `MODEL`(`Model_id`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `ORDERED_BY` (`Model_id`,`Customer_id`,`Number_of_items`) VALUES


-- CREATE TABLE 'PROJECTS' (
--     'M_id' INT NOT NULL,
--     'Project_id' INT NOT NULL,
--     'Project_name' VARCHAR(255) DEFAULT NULL,
--     'Deadline' TIMESTAMP DEFAULT NULL
--     FOREIGN KEY (`M_id`) REFERENCES `MANUFACTURER`(`M_id`)
-- )ENGINE=InnoDB DEFAULT CHARSET=latin1;