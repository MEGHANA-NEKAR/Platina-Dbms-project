CREATE TABLE `PROVIDES_SUPPLY` (
  `BId`  varchar(255) NOT NULL,
  `ManufacturerId` varchar(255) NOT NULL,
--   FOREIGN KEY (`BId`) REFERENCES `WAREHOUSE`(`BranchId`),
--   FOREIGN KEY (`ManufacturerId`) REFERENCES `MANUFACTURER`(`Mid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `PROVIDES_SUPPLY`(`BId`,`ManufacturerId`) VALUES
('W1','M1'),('W1','M3'),('W2','M4'),('W2','M7'),('W3','M2'),
('W3','M5'),('W4','M3'),('W4','M6'),('W4','M1'),('W5','M9'),
('W5','M10'),('W6','M8'),('W7','M1');
COMMIT;