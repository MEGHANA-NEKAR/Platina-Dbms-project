CREATE TABLE `STORES_RECORDS_OF_MODELS` (
  `RecordId` VARCHAR(255) NOT NULL,
  `ModelId` INT NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `STORES_RECORDS_OF_MODELS` (`RecordId`,`ModelId`) VALUES 
('R1',131),('R1',137),('R1',151),('R2',180),('R2',173),('R3',167),
('R3',170),('R3',178),('R3',183),('R3',164),('R3',162),('R3',144),
('R3',141),('R3',132),('R4',139),('R5',184),('R5',187),('R5',187), 
('R5',176),('R6',133),('R6',138),('R6',143),('R6',147),('R6',149), 
('R7',160),('R7',163),('R7',135),('R7',141),('R7',142),('R7',168),
('R7',171),('R7',176),('R8',159),('R8',161),('R8',164),('R8',172),
('R9',174),('R9',177),('R9',139),('R9',134),('R9',155),('R9',142),
('R10',145),('R10',149),('R10',158),('R11',162);
COMMIT;