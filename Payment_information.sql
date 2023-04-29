CREATE TABLE `PAYMENT_INFORMATION` (
  `RecordId` VARCHAR(255) NOT NULL,
  `ModeOfPayment` VARCHAR(255) NOT NULL,
  `TransactionStatus` VARCHAR(255) NOT NULL,
  `TotalPrice` INT DEFAULT NULL,
  `QuantityOfProducts` INT DEFAULT NULL,
  `DateOfTransaction` DATE DEFAULT NULL,
  `TimeOfTransaction` TIME DEFAULT NULL,
  `BId` VARCHAR(255)  NOT NULL,
  `CId` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`RecordId`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `PAYMENT_INFORMATION`(`RecordId`,`ModeOfPayment`,`TransactionStatus`,`TotalPrice`,`QuantityOfProducts`,`DateOfTransaction`,`TimeOfTransaction`,`BId`,`CId`) VALUES
('R1','credit card','Success',2397,3,'2022-11-16','20:15','W1','C1'),
('R2','credit card','Success',2149,2,'2022-11-01','15:15','W5','C2'),
('R3','debit card','Success',9125,9,'2022-01-18','13:18','W2','C3'),
('R4','debit card','Success',1099,1,'2022-05-20','14:47','W4','C4'),
('R5','debit card','Failure',5110,4,'2022-08-15','11:23','W2','C5'),
('R6','cash on delivery','Success',4506,5,'2022-09-30','21:22','W5','C6'),
('R7','cash on delivery','Success',7495,8,'2022-06-25','21:22','W6','C7'),
('R8','UPI','Success',3196,4,'2022-10-27','00:15','W7','C8'),
('R9','UPI','Failure',4745,6,'2022-06-13','09:15','W3','C9'),
('R10','credit card','Success',2418,3,'2022-11-17','10:15','W1','C10'),
('R11','credit card','Success',899,1,'2022-11-17','20:15','W4','C10');
COMMIT;