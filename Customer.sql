CREATE TABLE `CUSTOMER` (
  `CustId` VARCHAR(255) NOT NULL,
  `CustFirstName` VARCHAR(255) NOT NULL,
  `CustLastName` VARCHAR(255) DEFAULT NULL,
  `DateOfBirth` DATE DEFAULT NULL,
  `Gender` VARCHAR(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `BId` VARCHAR(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  PRIMARY KEY (`CustId`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `CUSTOMER` (`CustId`,`CustFirstName`,`CustLastName`,`DateOfBirth`,`Gender`,`Email`,`Contact`,`BId`,`City`) VALUES
('C1','James','Bond','1981-06-19','Male','james3@gmail.com','7834537894','W1','Bengaluru'),
('C2','Ishana','Agarwal','1999-05-09','Female','ishhh5@gmail.com','7836384921','W5','Hydrabad'),
('C3','Abhilash','Bhatt','1999-06-11','Male','abhilash843@gmail.com','9834537833','W2','Mumbai'),
('C4','Arjun','Reddy','1999-12-01','Male','reddy672@gmail.com','8345378821','W4','Bengaluru'),
('C5','Anaisha','Agarwal','2001-02-23','Female','anai123@gmail.com','9034537863','W2','Mumbai'),
('C6','Dhruv','Varma','2001-03-19','Male','d123456789@gmail.com','6234537894','W5','Hydrabad'),
('C7','Aditya','Chowdhury','2002-07-15','Male','chowd456@gmail.com','9934537855','W6','Delhi'),
('C8','Kaia','Kohli','2003-08-25','Female','kai98765@gmail.com','9134537893','W7','Mangalore'),
('C9','Sathwik','Reddy','1998-05-09','Male','saithwik674@gmail.com','8734537583','W3','Pondicherry'),
('C10','Ananya','Malhotra','2003-11-07','Female','ananya436@gmail.com','78345387723','W4','Ballari');
COMMIT;