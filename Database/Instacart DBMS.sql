CREATE TABLE Seller (
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(50),
	Email VARCHAR(50),
    Phone VARCHAR(100),
	Passwords VARCHAR(100)
);


CREATE TABLE Store (
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(50),
    Location VARCHAR(100),
	Phone VARCHAR(50),
	Email VARCHAR(50),
    SellerID INT,
    FOREIGN KEY (SellerID) REFERENCES Seller(SellerID)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
	LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
	Address VARCHAR(100),
	passw VARCHAR(100)
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
	Category VARCHAR(50),
	Description VARCHAR(100),
    Price DECIMAL(10, 2),
	QuantityInStock VARCHAR(100),
    SellerID INT,
	StoreID INT,
    FOREIGN KEY (SellerID) REFERENCES Seller(SellerID),
	FOREIGN KEY (StoreID) REFERENCES Store(StoreID)
);

CREATE TABLE Orderr (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
	TotalAmount VARCHAR(100),
	Instructions VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE Courier (
    CourierID INT PRIMARY KEY,
    CourierName VARCHAR(50),
    ContactNumber VARCHAR(100),
	OrderID INT,
	FOREIGN KEY (OrderId) REFERENCES Orderr(OrderID)
);


INSERT INTO Seller (sellerId, sellerName, email, phone, passwords)
VALUES
(1,'Kian','kian@gmail.com',09123456789,'kian123'),
(2,'Marcus','marcus@gmail.com',09419836266,'marcus321'),
(3,'Ryle','ryle@gmail.com',09876123456,'ryle123'),
(4,'Hayden','hayden@gmail.com',09018765432,'hayden321'),
(5,'Von','von@gmail.com',09560164949,'von123'),
(6,'Cedrick','cedrick@gmail.com',09456798215,'cedrick321'),
(7,'King','king@gmail.com',09459876321,'king123'),
(8,'Jerome','jerome@gmail.com',09128734651,'jerome321'),
(9,'John','john@gmail.com',09918943210,'john123'),
(10,'Adrian','adrian@gmail.com',09154326789,'adrian321');


INSERT INTO Store (StoreID, StoreName, Location, Phone, Email, SellerID)
VALUES
(1,'UrbanHarvest Market','San Jose, Batangas',09158397553,'urbanhm@gmail.com',1),
(2,'GlobalGoods Marketplace','San Jose, Batangas',09657491238,'ggmarket@gmail.com',2),
(3,'EcoEssentials Market','Lipa, Batangas',09462137845,'ecomart@gmail.com',3),
(4,'MetroMingle Market','Lipa, Batangas',09658212395,'metroM@gmail.com',4),
(5,'VillageVista Market','Mataasnakahoy, Batangas',09987654321,'vistavilm@gmail.com',5),
(6,'SummitSquare Marketplace','Mataasnakahoy, Batangas',09146329588,'summitsquare@gmail.com',6),
(7,'HarmonyHub Market','Alitagtag, Batangas',09568712345,'hhm123@gmail.com',7),
(8,'OasisOrganics Market','Padre Garcia,Batangas',09457123565,'oasisom@gmail.com',8),
(9,'FusionFlavors Marketplace','Rosario,Batangas',09916487562,'fusionfm@gmail.com',9),
(10,'FreshFare Market','Lipa, Batangas',09652376375,'freshfare@gmail.com',10);


INSERT INTO Product (ProductID, ProductName, Category, Description, Price, QuantityInStock, SellerID,StoreID)
VALUES
(10,'Whole Chicken','Meats','Farm grown quality chickens',210.00,25,1,1),
(20,'Whole Tuna','Seafood','Fresh and good quality tuna',250.00,20,2,2),
(30,'1 Liter Distilled Drinking Water','Beverage','Healthy and refreshing drink',120.00,30,3,3),
(40,'1kg Banana','Fruits','Freshly picked farm grown bananas',145.00,15,4,4),
(50,'Honey Stars','Cereal','Honey coated wheat and corn puffs',150.00,25,5,5),
(60,'Large Carrots','Vegetable','Farm fresh good for everyday cook',70.00,25,6,6),
(70,'Thick Cut Bacon','Meats','perfect blend of succulent pork belly, expertly cured for a smoky, savory flavor.',200.00,25,7,7),
(80,'Packed Strawberry','Fruits','Experience the freshness of nature with our packed strawberries.',120.00,15,8,8),
(90,'1kg Mussel','Seafood','Dive into the exquisite world of flavor with our premium mussel product.',180.00,10,9,9),
(100,'Baby Potatoes','Vegetable','Petite wonders that pack a punch of flavor.',80.00,15,10,10);

INSERT INTO Customer (CustomerID, FirstName, LastName, Email, Phone, Address,passw)
VALUES
(1,'Lourenz','Francisco','lourenzaf@gmail.com',09184637582,'Rosario, Batangas','lourenz123'),
(2,'Emman','Mendoza','emman@gmail.com',09123856384,'Cuenca, Batangas','emman321'),
(3,'Alleon','Perez','alleon@gmail.com',09956123758,'Rosario, Batangas','ajp123456'),
(4,'Denver','Salazar','denver@gmail.com',09914375827,'Rosario, Batangas','denver654'),
(5,'Tammy','Jones','tammy@gmail.com',09561239768,'San Jose, Batangas','tammy123'),
(6,'Keith','Ciruelas','keithc@gmail.com',09457821237,'San Juan, Batangas','keith321'),
(7,'Angel','Agon','angela@gmail.com',09569824624,'Rosario, Batangas','angela123'),
(8,'Jawn','John','jawnj@gmail.com',09357192377,'Lipa,Batangas','jawn987'),
(9,'Quinn','Panaligan','quinnp@gmail.com',09152642868,'Alitagtag,Batangas','quinn789'),
(10,'Mac','Lauren','mcl2@gmail.com',09481237831,'San Juan,Batangas','macmac456');

INSERT INTO Orderr (OrderID, CustomerID,ProductID, OrderDate, Quantity, TotalAmount, Instructions)
VALUES
(1,2,40,'November 10,2023',2,290,'Call Susan when delivered'),
(2,3,60,'November 16,2023',4,280,'N/A'),
(3,1,10,'November 17,2023',2,420,'N/A'),
(4,4,20,'November 17,2023',1,250,'Deliver it next week'),
(5,5,50,'November 18,2023',2,300,'N/A'),
(6,6,30,'November 19,2023',1,120,'N/A'),
(7,7,40,'November 23,2023',1,145,'N/A'),
(8,8,90,'November 25,2023',2,360,'N/A'),
(9,10,70,'November 25,2023',3,600,'N/A'),
(10,9,100,'November 27,2023',5,400,'N/A');

INSERT INTO Courier (CourierID, CourierName, ContactNumber, OrderID)
VALUES
(101,'Mark',0981237651,6),
(102,'Jawn',0946123758,3),
(103,'Lawrence',09156473866,4),
(104,'Axl',09568123950,2),
(105,'Tommy',09916834959,5),
(106,'Andrei',09481237497,1),
(107,'Bob', 09958672348,7),
(108,'Leonis', 09956137887,9),
(109,'Albert', 09461438796,10),
(110,'Isaac', 09562398767,8);