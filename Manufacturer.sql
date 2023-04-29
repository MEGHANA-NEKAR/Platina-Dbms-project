CREATE TABLE `MANUFACTURER` (
  `Mid` VARCHAR(255) NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  PRIMARY KEY (`Mid`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `MANUFACTURER` (`Mid`, `Name`,`Email`,`Contact`,`City`) VALUES
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
COMMIT;