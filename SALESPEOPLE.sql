USE SALESREPORT;
create table SALESPEOPLE (
    Snum INT NOT NULL PRIMARY KEY,
    Sname VARCHAR(50) NOT NULL,
    City VARCHAR(50),
    Comm FLOAT
);
INSERT INTO SalesPeople
VALUES
    (1001,'Peel','London',0.12),
    (1002,'Serres','San Jose',0.13),
    (1004,'Motika','London',0.11),
    (1007,'Rafkin','Barcelona',0.15),
    (1003,'Axelrod','New york',0.1);
    
CREATE TABLE Customers (
    Cnum INT NOT NULL,
    Cname VARCHAR(50) NOT NULL,
    City VARCHAR(50),
    Rating INT,
    Snum INT NOT NULL,
    CONSTRAINT PK_Customers_Cnum PRIMARY KEY(Cnum),
    CONSTRAINT FK_Customers_Snum FOREIGN KEY(Snum) REFERENCES SalesPeople(Snum)
);
INSERT INTO Customers
VALUES 
    (2001,'Hoffman','London',100,1001),
    (2002,'Giovanne','Rome',200,1003),
    (2003,'Liu','San Jose',300,1002),
    (2004,'Grass','Brelin',100,1002),
    (2006,'Clemens','London',300,1007),
    (2007,'Pereira','Rome',100,1004);
CREATE TABLE Orders (
    Onum INT NOT NULL,
    AMT FLOAT NOT NULL,
    Odate DATE NOT NULL,
    Cnum INT NOT NULL,
    Snum INT NOT NULL,
    CONSTRAINT PK_Orders_Onum PRIMARY KEY(Onum),
    CONSTRAINT FK_Orders_Cnum FOREIGN KEY(Cnum) REFERENCES Customers(Cnum),
    CONSTRAINT FK_Orders_Snum FOREIGN KEY(Snum) REFERENCES SalesPeople(Snum)
);
INSERT INTO Orders 
VALUES
    (3001,18.69,'03-OCT-94',2004,1007),
    (3003,767.19,'03-OCT-94',2001,1001),
    (3002,1900.10,'03-OCT-94',2007,1004),
    (3005,5160.45,'03-OCT-94',2003,1002),
    (3006,1098.16,'04-OCT-94',2004,1007),
    (3009,1713.23,'04-OCT-94',2002,1003),
    (3007,75.75,'05-OCT-94',2004,1002),
    (3008,4723.00,'05-OCT-94',2006,1001),
    (30010,1309.95,'06-OCT-94',2004,1002),
    (30011,9891.88,'06-OCT-94', 2006,1001)
-- SELECT * FROM  orders ;

-- Count the number of Salesperson whose name begin with ‘a’/’A’ ;

 SELECT Count(*)sname FROM salespeople WHERE sname LIKE 'a%' or sname LIKE 'A%' ;
 
 --  Display all the Salesperson whose all orders worth is more than Rs. 2000.
     select * from orders WHERE amt > 2000;  
 
 --  Count the number of Salesperson belonging to Newyork.
     SELECT Count(*) FROM salespeople WHERE city is 'Newyork' ;
     
--  Display the number of Salespeople belonging to London and belonging to Paris.
    SELECT Count(sname) from salespeople WHERE city='London' and city='Paris';
    
--   Display the number of orders taken by each Salesperson and their date of orders.

SELECT Count(*),odate,snum from orders group by odate,snum;