CREATE TABLE `STAFF`(
  `Sid` VARCHAR(255) NOT NULL,
  `SName` VARCHAR(255) NOT NULL,
  `Gender` VARCHAR(255) DEFAULT NULL,
  `DateOfBirth` DATE DEFAULT NULL,
  `Role` VARCHAR(255) NOT NULL,
  `Salary` INT DEFAULT NULL,
  `City` VARCHAR(255) DEFAULT NULL,
  `BranchId` VARCHAR(255) NOT NULL,
  `SuperSid` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Sid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `STAFF`(`Sid`,`SName`,`Gender`,`DateOfBirth`,`Role`,`Salary`,`City`,`BranchId`,`SuperSid`) VALUES
('S1','Sophia','Female','1999-03-12','Warehouse Associate',25000,'Bengaluru','W1','S9'),
('S2','Ajit','Male','1997-05-13','Warehouse Associate',35000,'Bengaluru','W1','S9'),
('S3','Anjali','Female','1998-05-15','Warehouse Processing Supervisor',55000,'Hydrabad','W5','S3'),
('S4','Aravinda','Female','1997-06-17','Warehouse Associate',25000,'Hydrabad','W5','S3'),
('S5','Arnav','Male','1998-07-21','Warehouse Associate',25000,'Mumbai','W2','S9'),
('S6','Aditi','Female','1998-08-23','Warehouse Associate',25000,'Mumbai','W2','S9'),
('S7','Devanand','Male','1995-09-25','Warehouse Associate',25000,'Delhi','W6','S3'),
('S8','Hansa','Female','1995-10-25','Warehouse Associate',25000,'Delhi','W6','S3'),
('S9','Karthik','Male','1995-10-26','Warehouse Processing Supervisor',55000,'Chennai','W3','S9'),
('S10','Leela','Female','1987-11-29','Warehouse Associate',25000,'Chennai','W3','S9'),
('S11','Manas','Male','1987-11-01','Warehouse Associate',25000,'Mangalore','W7','S3'),
('S12','Nitesh','Male','1985-12-02','Warehouse Associate',25000,'Mangalore','W7','S3'),
('S13','Asmita','Female','1991-12-05','Warehouse Associate',35000,'Bengaluru','W4','S9'),
('S14','Ekta','Female','1992-05-09','Warehouse Associate',35000,'Bengaluru','W4','S9');
COMMIT;