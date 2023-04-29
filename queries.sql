--1 procedure (to select all the female customers so as to advertise them with skin care products)
delimiter $$
create procedure select_female_customers()
begin 
	select * from CUSTOMER where Gender='Female';
end $$
delimiter ;

--then execute
call select_female_customers();


--2 funcion (to check weather a particular manufacturer is in Bengaluru)
delimiter $$
create function is_in_ben(manufacturer_id varchar(255))
returns varchar(50)
deterministic
begin
	declare flag varchar(50);
    declare msg varchar(50);
    select City into flag from MANUFACTURER where Mid = manufacturer_id;
    if flag = 'Bengaluru' then
		set msg = ("Manufacturer is from Bengaluru");
	else 
		set msg = ("Manufacturer is NOT from Bengaluru");
	end if;
    return msg;
end $$
delimiter ;

--then execute
select is_in_ben('M1') from manufacturer;
select is_in_ben('M8') from manufacturer;

--3 SET operations

--3.1 select all crop tops which are either Black or Blue in color
select * from MODEL where ModelType = 'crop top' and ModelColor = 'Black' 
union
select * from MODEL where ModelType = 'crop top' and ModelColor = 'Blue';

--3.2 select cutomers who did credit card transactions with warehouse 1
select CId from PAYMENT_INFORMATION where ModeOfPayment = 'credit card'
intersect
select CId from PAYMENT_INFORMATION where BId = 'W1';

--3.3 Select staff who dont work at Hydrabad
select * from STAFF 
except
select * from STAFF where City = 'Hydrabad';

--3.4 select woolen cardigan or cotton cardigan
select * from MODEL where ModelType = 'cardigan' and ModelMaterial = 'woolen' 
union all
select * from MODEL where ModelType = 'cardigan' and ModelMaterial = 'cotton';


-- 4 creating a view

CREATE VIEW my_view AS
SELECT CUSTOMER.CustId, CustFirstName, MODEL.ModelId, ModelType,ModelColor,ModelMaterial,ModelSize,Price
FROM CUSTOMER join ORDERED_BY on CUSTOMER.CustId = ORDERED_BY.CustId
join MODEL on MODEL.ModelId = ORDERED_BY.ModelId;

-- here you may perform oprations on view

-- 4.1 find total sum of prices ordered by customer 1
select sum(Price) from my_view where CustId = 'C1'

-- 4.2 Find the total number of models sold out of all model types
select ModelType,count(*) from my_view group by ModelType;

-- 5 Trigger
delimiter $$
create trigger invalid_ph_no
before insert
on MANUFACTURER for each row
begin
	declare msg varchar(100);
    declare valu1 int;
    set msg = ("Contact Number cannot be longer than 10 digits");
    if (LENGTH(NEW.Contact)>10) then
    signal sqlstate	'45000'
    set message_text = msg;
    end if;
end ;
delimiter;

--then execute (must thow the aboe msg as error)
INSERT INTO `MANUFACTURER` (`Mid`, `Name`,`Email`,`Contact`,`City`) VALUES
('M11','Pinky','ppinky@yahoo.com','84758778450','Bengaluru')

-- 6 join queries

-- 6.1 Details of item/s ordered by customer with cid=1.

SELECT * FROM MODEL JOIN ORDERED_BY on MODEL. ModelId= ORDERED_BY.ModelId WHERE CustId='c1';

-- 6.2 Details of Manufacturer supplied to warehouse with bid=4.

SELECT *  FROM MANUFACTURER JOIN PROVIDES_SUPPLY on Mid=ManufacturerId WHERE Bid='w4';

-- 6.3 Details of Warehouse where aditi is working

SELECT * FROM WAREHOUSE JOIN STAFF ON WAREHOUSE.BRANCHID = STAFF.BRANCHID WHERE SNAME= 'aditi';

-- 6.4 All items manufactured by manufacturer with id=5.

SELECT *  FROM MANUFACTURES JOIN MODEL ON MANUFACTURES.MODELID = MODEL.MODELID WHERE MID='m5';

-- 6.5 Quantity and details of items supplied from manufacturer with id=3 to warehouse with id=4.

Select * from model join transaction_warehouse_manufacturer where mid='m3' and bid='w4';

-- 6.6 Details of white shirt along with their quantity stored in each warehouse

Select * from model join stores where modelcolor= 'white' and modeltype='shirt';

--6.7 Details and quantity of products manufactured by id=7(+details of manufacturer )

Select * from model join manufactures where mid='m7';

-- correlated query
-- select CustFirstName, CustLastName, ModeOfPayment from customer, PAYMENT_INFORMATION
-- where exists (select * from PAYMENT_INFORMATION where CustId=CId);

-- select BranchId, Wcity,CustId, CustFirstName,CustLastName,TotalPrice from warehouse,customer,PAYMENT_INFORMATION
-- where exists(select RecordId from PAYMENT_INFORMATION where RecordId='r8' and PAYMENT_INFORMATION.BId=warehouse.BranchId and PAYMENT_INFORMATION.cid=customer.CustId);

-- select sname, Sid, warehouse.BranchId, staff.city from warehouse, staff where NOT exists (select * from staff where staff.city='Bengaluru' );



-- Select * from customer c Inner join warehouse w where w.id=c.id

-- SELECT sname, Sid, warehouse.BranchId, staff.city
-- FROM warehouse , staff 
-- WHERE EXISTS (SELECT staff.city
-- FROM staff
-- WHERE staff.city= warehouse.Wcity);

-- Select x from customer c
-- Where exists (select y from warehouse w where c.id=w.id)

-- select BranchId, Wcity,CustId, CustFirstName,CustLastName,TotalPrice from warehouse w,customer c,PAYMENT_INFORMATION
-- where exists(select RecordId from PAYMENT_INFORMATION p where RecordId='r8' and p.BId=w.BranchId and p.cid=c.CustId);

-- nested queries

-- customer who get products whose material is either cotton or nylon
select CustFirstName,CustLastName from customer where customer.CustId in(
Select distinct(ORDERED_BY.CustId) from ORDERED_BY where ORDERED_BY.MODELID IN
(Select MODELID from model where ModelMaterial='cotton' or ModelMaterial='nylon'));


-- 2nd max salary
select sname, salary from staff where salary = (select max(salary) from staff where salary <> (select max(salary) from staff));

-- correlated query
-- customer names who have paid through credit card
 select CustFirstName,CustLastName from customer where exists (select * from PAYMENT_INFORMATION where customer.CustId=PAYMENT_INFORMATION.cid and ModeOfPayment='credit card');

-- select * from stores where exists (select * from model where modelcolor='white' and modeltype='shirt' and stores.ModelId=model.ModelId);

-- select * from model,manufactures where exists(select * from manufactures where manufactures.mid='m7');

-- details of manufacturer who supply for branchid =w1;
select * from manufacturer as m where exists (select * from transaction_warehouse_manufacturer as t where t.mid=m.mid and t.bid='w1');

-- aggreagate queries

-- Details of product with least price 
select * from model where price = (select min(price) from model );

-- Average price of shirt
select avg(price) from model where modeltype='shirt';

-- Number of manufacturers in Bengaluru
select count(*) from manufacturer where city='bengaluru';

-- Number of products with discount 
select count(*) from model where discount <> 'NULL';

