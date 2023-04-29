CREATE TABLE `WAREHOUSE` (
  `BranchId` VARCHAR(255) NOT NULL,
  `Wcity` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`BranchId`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `WAREHOUSE` (`BranchId`,`Wcity`) VALUES 
('W1','Bengaluru'),
('W2','Mumbai'),
('W3','Chennai'),
('W4','Bengaluru'),
('W5','Hydrabad'),
('W6','Delhi'),
('W7','Mangalore');
COMMIT;