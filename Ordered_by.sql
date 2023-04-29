CREATE TABLE `ORDERED_BY` (
  `CustId` VARCHAR(255) NOT NULL,
  `ModelId` INT NOT NULL,
  FOREIGN KEY (`CustId`) REFERENCES `CUSTOMER`(`CustId`),
  FOREIGN KEY (`ModelId`) REFERENCES `MODEL`(`ModelId`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `ORDERED_BY` (`CustId`,`ModelId`) VALUES
('C1',131),('C1',137),('C1',151),('C2',180),('C2',173),('C3',167),
('C3',170),('C3',178),('C3',183),('C3',164),('C3',162),('C3',144),
('C3',141),('C3',132),('C4',139),('C5',184),('C5',187),('C5',187), 
('C5',176),('C6',133),('C6',138),('C6',143),('C6',147),('C6',149), 
('C7',160),('C7',163),('C7',135),('C7',141),('C7',142),('C7',168),
('C7',171),('C7',176),('C8',159),('C8',161),('C8',164),('C8',172),
('C9',174),('C9',177),('C9',139),('C9',134),('C9',155),('C9',142),
('C10',145),('C10',149),('C10',158),('C10',162);
COMMIT;