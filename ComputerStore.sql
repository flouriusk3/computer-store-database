/* creating the store relation*/
CREATE TABLE Store (
    storeID INT, 
    storeName VARCHAR(30), 
    storeAddress VARCHAR(30)
  );

/* inserting values into the Store Relation and display all values*/
  INSERT INTO Store (storeID, storeName, storeAddress) 
  VALUES (1, 'Kiyunna''s Store', '927 Garth Road');
  
  INSERT INTO Store (storeID, storeName, storeAddress) 
  VALUES (1, 'Haoma''s Store', '412 Main Street');

  SELECT * FROM Store;

-- change store ID to 2 for Haoma's store
  UPDATE STORE SET storeID = 2 WHERE storeName = 'Haoma''s Store';

/* creating the shipment relation*/
  CREATE TABLE Shipment (
    shipID INT, 
    shipName VARCHAR(20), 
    shipQuantity INT,
	storeID INT
  );

/* inserting values into the Shipment Relation and display all values*/
  INSERT INTO Shipment(shipID, shipName, shipQuantity,storeID) 
  VALUES (927, 'KShipments', 20000, 1);
  
  INSERT INTO Shipment(shipID, shipName, shipQuantity, storeID) 
  VALUES (412, 'HShipments',22000, 2);

  SELECT * FROM Shipment;

/* creating the employee relation*/
   CREATE TABLE Employee (
    empID INT, 
    empName VARCHAR(50), 
    empAddress VARCHAR(40),
	empSalary DECIMAL(5,2),
	empPos VARCHAR(15),
	empStatus VARCHAR(5)
  );

-- add the column store id to the employee relation
	ALTER TABLE Employee 
	ADD storeID INT;

-- change the data type for the empSalary column from decimal to int
	ALTER TABLE Employee 
	ALTER COLUMN empSalary INT;

/* inserting values into the Employee Relation and display all values*/
  INSERT INTO Employee(empID,empName,empAddress,empSalary,empPos,empStatus,storeID) 
  VALUES(1,'Beyonce Knowles','488 Pendergast Avenue',60000,'Manager','A',2),
		(2,'Taylor Swift','8303 Maiden Rd',45000,'Salesperson','F',1),
		(3,'Justin Beiber','47 North Nut Swamp Ave.',45000,'Salesperson','F',1),
		(4,'Kim Kardashian','8607 Ann Street',45000,'Salesperson','A',2),
		(5,'Tom Cruise','9 Parker Lane',45000,'Salesperson','A',1),
		(6,'Shawn Carter','8034 Nut Swamp St.',45000,'Salesperson','A',2),
		(7,'Katy Perry','45 Foxrun St.',45000,'Salesperson','F',2),
		(8,'Cristiano Ronaldo','8518 Selby Ave.',45000,'Salesperson','A',2),
		(9,'Johnny Depp','28 San Pablo St.',45000,'Salesperson','A',1),
		(10,'Brad Pitt','7478 Littleton St.',45000,'Salesperson','F',1),
		(11,'Rihanna Fenty','493 South Glen Ridge Court',45000,'Salesperson','F',2),
		(12,'Kanye West','649 Homestead St.',45000,'Salesperson','A',1),
		(13,'Oprah Winfrey','767 Chestnut Lane',60000,'Manager','F',2),
		(14,'Leonardo DiCaprio','7970 New St.',45000,'Salesperson','F',2),
		(15,'Angelina Jolie','7369 Elm Drive',45000,'Salesperson','A',1),
		(16,'Tom Hanks','8303 West Durham Drive',45000,'Salesperson','A',2),
		(17,'Ellen DeGeneres','8412 Cedar Swamp St.',45000,'Salesperson','A',2),
		(18,'Britney Spears','9301 Glen Ridge Road',45000,'Salesperson','A',2),
		(19,'Dwayne Johnson','6203 Sage Rd',45000,'Salesperson','A',2),
		(20,'Tiger Woods','77 Lakeshore Rd.',45000,'Salesperson','A',1),
		(21,'Jennifer Anniston','31 North Marconi Lane',45000,'Salesperson','F',1),
		(22,'Jennifer Lopez','7240 S. Baker Ave.',45000,'Salesperson','A',2),
		(23,'Elton John','24 Elmwood Street',45000,'Salesperson','A',2),
		(24,'Sean Combs','4 Homewood Street',45000,'Salesperson','A',1),
		(25,'David Beckham','91 Elmwood St.',45000,'Salesperson','A',2),
		(26,'Selena Gomez','430 Pin Oak Lane',45000,'Salesperson','A',1),
		(27,'Barack Obama','53 East Kent St.',60000,'Manager','A',1),
		(28,'Will Smith','938 East Country Avenue',45000,'Salesperson','A',1),
		(29,'Kevin Hart','4 Blackburn Avenue',45000,'Salesperson','F',1),
		(30,'Miley Cyrus','101 Branch Drive',45000,'Salesperson','F',2),
		(31,'Michael Jordan','4 West Hilltop St.',45000,'Salesperson','A',2),
		(32,'Kobe Bryant','703 West Jones Ave.',45000,'Salesperson','F',2),
		(33,'Mariah Carey','8910 Middle River Street',45000,'Salesperson','A',2),
		(34,'Mel Gibson','8423 King St.',45000,'Salesperson','F',1),
		(35,'Matt Damon','8234 W. Spring Lane',45000,'Salesperson','F',1),
		(36,'Julia Roberts','314 King Lane',45000,'Salesperson','A',2),
		(37,'Emma Watson','202 South North St.',45000,'Salesperson','F',1),
		(38,'Ryan Seacrest','9331 N. Beacon Ave.',45000,'Salesperson','A',1),
		(39,'Lebron James','8797 Old Pleasant Street',45000,'Salesperson','A',1),
		(40,'Carmelo Anthony','8096 Thatcher St.',45000,'Salesperson','A',1),
		(41,'Vin Diesel','25 Saxton St.',45000,'Salesperson','A',1),
		(42,'Bill Gates','7683 South Lafayette St.',60000,'Manager','A',2),
		(43,'Morgan Freeman','7107 Howard St.',45000,'Salesperson','F',1),
		(44,'Sylvester Stallone','8800 Tanglewood Lane',45000,'Salesperson','A',1),
		(45,'Cameron Diaz','7619 Union Drive',45000,'Salesperson','F',2),
		(46,'George Clooney','31 Helen Ave.',45000,'Salesperson','A',2),
		(47,'Orlando Bloom','993 Garden Street',45000,'Salesperson','A',1),
		(48,'Jackie Chan','7567 Hilldale Ave.',45000,'Salesperson','A',2),
		(49,'Adam Sandler','27 Wintergreen Street',45000,'Salesperson','F',2),
		(50,'Michelle Obama','7291 Princess Dr.',60000,'Manager','A',1);
		
		 SELECT * FROM Employee;

/* creating the sales relation*/
		CREATE TABLE Sales (
		saleGoal INT, 
		saleQuantity INT, 
		saleTotal INT
	  );

/* inserting values into the sales Relation and display all values*/
	   INSERT INTO Sales(saleGoal,saleQuantity,saleTotal) 
	   VALUES 
		(45000,185,83250),
		(45000,82,28700),
		(45000,23,8050),
		(45000,132,46200),
		(45000,228,79800),
		(45000,155,54250),
		(45000,6,2100),
		(45000,344,120400),
		(45000,207,72450),
		(45000,13,4550),
		(45000,97,33950),
		(45000,481,168350),
		(45000,21,7350),
		(45000,34,11900),
		(45000,416,145600),
		(45000,338,118300),
		(45000,174,60900),
		(45000,269,94150),
		(45000,382,133700),
		(45000,464,162400),
		(45000,29,10150),
		(45000,242,84700),
		(45000,154,53900),
		(45000,187,65450),
		(45000,354,123900),
		(45000,467,163450),
		(45000,280,98000),
		(45000,205,71750),
		(45000,29,10150),
		(45000,24,8400),
		(45000,171,59850),
		(45000,63,22050),
		(45000,337,117950),
		(45000,111,38850),
		(45000,40,14000),
		(45000,304,106400),
		(45000,47,16450);

		SELECT * FROM Sales;

		INSERT INTO Sales(saleGoal,saleQuantity,saleTotal) 
		VALUES 
		(45000,380,133000),
		(45000,271,94850),
		(45000,319,111650),
		(45000,422,147700),
		(45000,175,61250),
		(45000,49,17150),
		(45000,493,172550),
		(45000,81,28350),
		(45000,449,157150),
		(45000,167,58450),
		(45000,286,100100),
		(45000,118,41300),
		(45000,264,92400);

		SELECT * FROM Sales;

/* creating the product relation*/
		CREATE TABLE Product (
		prodID INT, 
		prodName VARCHAR(30), 
		prodPrice INT);

/* inserting values into the product Relation and display all values*/
		INSERT INTO Product(prodID,prodName,prodPrice) 
		VALUES (98765, 'HP All in One PC',450);

		SELECT * FROM Product;

/* creating the orders relation*/
		CREATE TABLE Orders (
		orderID INT, 
		orderDate VARCHAR(30), 
		orderQuantity INT,
		orderTotal INT,
		empID INT);

/* inserting values into the Orders Relation and display all values*/
		INSERT INTO Orders (orderID,orderDate,orderQuantity,orderTotal,empID) 
		VALUES 
		(12345,'January 7, 2017',185,83250,1),
		(12346,'January 8, 2017',82,28700,2),
		(12347,'January 13, 2017',23,8050,3),
		(12348,'January 16, 2017',132,46200,4),
		(12349,'January 25, 2017',228,79800,5),
		(12350,'January 30, 2017',155,54250,6),
		(12351,'February 6, 2017',6,2100,7),
		(12352,'February 7, 2017',344,120400,8),
		(12353,'February 21, 2017',207,72450,9),
		(12354,'February 23, 2017',13,4550,10),
		(12355,'March 9, 2017',97,33950,11),
		(12356,'March 11, 2017',481,168350,12),
		(12357,'March 13, 2017',21,7350,13),
		(12358,'March 14, 2017',34,11900,14),
		(12359,'March 19, 2017',416,145600,15),
		(12360,'March 20, 2017',338,118300,16),
		(12361,'March 28, 2017',174,60900,17),
		(12362,'March 31, 2017',269,94150,18),
		(12363,'April 1, 2017',382,133700,19),
		(12364,'April 3, 2017',464,162400,20),
		(12365,'April 9, 2017',29,10150,21),
		(12366,'April 13, 2017',242,84700,22),
		(12367,'April 14, 2017',154,53900,23),
		(12368,'April 15, 2017',187,65450,24),
		(12369,'April 18, 2017',354,123900,25),
		(12370,'January 4, 2017',467,163450,26),
		(12371,'January 8, 2017',280,98000,27),
		(12372,'January 9, 2017',205,71750,28),
		(12373,'January 12, 2017',29,10150,29),
		(12374,'January 13, 2017',24,8400,30),
		(12375,'January 14, 2017',171,59850,31),
		(12376,'January 19, 2017',63,22050,32),
		(12377,'January 22, 2017',337,117950,33),
		(12378,'February 4, 2017',111,38850,34),
		(12379,'February 8, 2017',40,14000,35),
		(12380,'February 17, 2017',304,106400,36),
		(12381,'February 20, 2017',47,16450,37),
		(12382,'February 22, 2017',380,133000,38),
		(12383,'February 26, 2017',271,94850,39),
		(12384,'March 3, 2017',319,111650,40),
		(12385,'March 6, 2017',422,147700,41),
		(12386,'March 9, 2017',175,61250,42),
		(12387,'March 10, 2017',49,17150,43),
		(12388,'March 13, 2017',493,172550,44),
		(12389,'March 14, 2017',81,28350,45),
		(12390,'March 15, 2017',449,157150,46),
		(12391,'March 20, 2017',167,58450,47),
		(12392,'March 31, 2017',286,100100,48),
		(12393,'April 2, 2017',118,41300,49),
		(12394,'April 13, 2017',264,92400,50);

		SELECT * FROM Orders;
		

/* creating the customer relation*/
		 CREATE TABLE Customer (
			custID INT, 
			custName VARCHAR(30), 
			custAddress VARCHAR(40),
			orderID INT
		  );

/* inserting values into the customer Relation and display all values*/
		  INSERT INTO Customer (custID,custName,custAddress,orderID)  VALUES 
		(51,'Shawnda Hoda' ,'40 Rock Creek Drive',12345),
		(52,'Buena Pines' ,'85 West Beaver Ridge Lane',12346),
		(53,'Rosalie Tsuji' ,'140 Country Club Dr.',12347),
		(54,'Korey Ridgell' ,'49 Lafayette Street',12348),
		(55,'Kyong Casler' ,'205 Lilac Rd.',12349),
		(56,'Sarai Erhart' ,'99 Lawrence St.',12350),
		(57,'Merrie Smidt' ,'227 Bank Court',12351),
		(58,'Milagros Guertin' ,'659 Bow Ridge St.',12352),
		(59,'Reva Vanish' ,'6 Laurel Ave.',12353),
		(60,'Veronica Abreu' ,'331 Walnut Drive',12354),
		(61,'Jonell Alberico' ,'62 Bradford Road',12355),
		(62,'Susannah Ogilvie' ,'79 Indian Spring Street',12356),
		(63,'Latoyia Bizzell' ,'15 Mayflower Dr.',12357),
		(64,'Lavonia Shreve' ,'582 Trout Drive',12358),
		(65,'Michiko Pankey' ,'107 East High Lane',12359),
		(66,'Shanelle Koff' ,'9841 Eagle Court',12360),
		(67,'Dustin Erne' ,'179 Wakehurst Ave.',12361),
		(68,'Beryl Guerrette' ,'2 E. Hall Street',12362),
		(69,'Sunshine Buch' ,'8790 Maiden Drive',12363),
		(70,'Sheila Towers' ,'7 Rockland Street',12364),
		(71,'Vada Heisey' ,'926 University St.',12365),
		(72,'Melonie Hendershott' ,'249 Holly St.',12366),
		(73,'Yoshie Kitchen','88 Cherry Hill Court',12367),
		(74,'Erlene Kling' ,'917 Lexington Ave.',12368),
		(75,'Kathey Defeo' ,'1 South Sheffield Street',12369),
		(76,'Dina Piekarski' ,'178 Prospect Ave.',12370),
		(77,'Jacquelynn Wilt' ,'9122 Wayne Dr.',12371),
		(78,'Ashlee Wind' ,'9148 Columbia Lane',12372),
		(79,'Alyson Petitt' ,'8205 N. Carriage Dr.',12373),
		(80,'Jerald Laduke' ,'974 Thomas St.',12374),
		(81,'Darrell Barwick' ,'71 High Point Dr.',12375),
		(82,'Carroll Parris' ,'496 Kent Ave.',12376),
		(83,'Paulette Strader' ,'43 Indian Summer Road',12377),
		(84,'Ronda Wuensche' ,'8258 Hickory Ave.',12378),
		(85,'Kena Hagge' ,'63 Branch Street',12379),
		(86,'Illa Caverly' ,'20 Amerige Ave.',12380),
		(87,'Clotilde Pollack' ,'60 West Oakwood Street',12381),
		(88,'Adolfo Calcote' ,'816 E. Bay Meadows Street',12382),
		(89,'Noah Milliman' ,'527 Pineknoll St.',12383),
		(90,'Catina Kirsh' ,'726 Old Vale Street',12384),
		(91,'Bianca Salinas' ,'470 Elizabeth Street',12385),
		(92,'Madelyn Carmean' ,'819 Jennings Court',12386),
		(93,'Ellyn Guidroz' ,'56 West Franklin Drive',12387),
		(94,'Ava Keels' ,'87 North Grandrose Street',12388),
		(95,'Augusta Gateley' ,'483 Cambridge Dr.',12389),
		(96,'Jamar Cali' ,'9900 New Drive',12390),
		(97,'Liane Bergman' ,'267 Dogwood Ave.',12391),
		(98,'Floyd Deleeuw' ,'60 Grandrose Street',12392),
		(99,'Hayden Teachout' ,'9425 W. Third Dr.',12393),
		(100,'Elbert Bozell' ,'563 South Vernon Dr.',12394);


		SELECT * FROM Customer;

/************** AGGREGATE OPERATIONS**********/

-- Check quantity of incoming shipments and sum of all the products in them

SELECT COUNT(shipID) AS shipAmount, 
			SUM(shipQuantity) AS mySum
		FROM Shipment;

-- Find number of stores we own.

SELECT COUNT(*) AS storeCount
FROM Store;

-- Check how many employees have salaries greater than 45,000
	
SELECT COUNT(*) AS myCount
		FROM Employee
		WHERE empSalary > 45000;

-- Find minimum, maximum, and average price of products.

SELECT MIN(prodPrice) AS minPrice, 
			MAX(prodPrice) AS maxPrice,
		 	AVG(prodPrice) AS avgPrice
		FROM Product;

-- Check amount of orders made and sum
	
SELECT COUNT(orderID) AS myCount, 
			SUM(orderTotal) AS mySum
		FROM Orders;

-- Count amount of total sales over 100

SELECT COUNT(saleTotal) as countSales
FROM Sales
WHERE saleTotal > 60000;

-- View customers who have the word street in their address

SELECT COUNT(*) AS countStreet 
FROM Customer
WHERE custAddress LIKE '%Street%';


/************** JOINT OPERATIONS**********/

-- List the name of the store, shipment name, and shipment quantity for each store
		
        SELECT storeName, shipName, shipQuantity
   		FROM Store, Shipment
  		WHERE Store.storeID =Shipment.storeID;

-- List complete details of all staff who work at Kiyunna’s Branch by address
	SELECT *
    FROM Employee, Store
    WHERE storeAddress = '927 Garth Road' AND Employee.storeID = Store.storeID;
    
-- Using a full outer join, show records of all products and shipments

SELECT *
FROM Shipment
FULL JOIN Product ON Shipment.shipID = Product.prodID;

-- list all info of customers and their orders

SELECT * 
FROM Customer, Orders
WHERE Orders.orderID = Customer.orderID;

-- list all info of employees and the orders they are handling

SELECT * 
FROM Employee, Orders
WHERE Orders.empID = Employee.empID;

-- Show Order ID, Date, Employee ID, Quantity and Total where the sale quantity and order quantity are equal
SELECT orderID, orderDate, Orders.empID, saleQuantity, saleTotal
FROM Orders, Sales
WHERE Orders.orderQuantity = Sales.saleQuantity;





