CREATE DATABASE northwind;

USE northwind;


CREATE TABLE Categories (  
    CategoryName VARCHAR(15)  ,
    Description VARCHAR,
    Picture VARCHAR(255),
    CategoryID INTEGER
);


CREATE TABLE CustomerCustomerDemo (
    CustomerID VARCHAR(5)  ,
    CustomerTypeID VARCHAR(10)  
);



CREATE TABLE CustomerDemographics (
    CustomerTypeID VARCHAR(10)  ,
    CustomerDesc VARCHAR
);


CREATE TABLE Customers (
    CustomerID VARCHAR(5)  ,
    CompanyName VARCHAR(40)  ,
    ContactName VARCHAR(30),
    ContactTitle VARCHAR(30),
    Address VARCHAR(60),
    City VARCHAR(15),
    Region VARCHAR(15),
    PostalCode VARCHAR(10),
    Country VARCHAR(15),
    Phone VARCHAR(24),
    Fax VARCHAR(24)
);

CREATE TABLE Employees (
    
    LastName VARCHAR(20)  ,
    FirstName VARCHAR(10)  ,
    Title VARCHAR(30),
    TitleOfCourtesy VARCHAR(25),
    BirthDate TIMESTAMP,
    HireDate TIMESTAMP,
    Address VARCHAR(60),
    City VARCHAR(15),
    Region VARCHAR(15),
    PostalCode VARCHAR(10),
    Country VARCHAR(15),
    HomePhone VARCHAR(24),
    Extension VARCHAR(4),
    Notes VARCHAR  ,
    ReportsTo INTEGER,
    PhotoPath VARCHAR(255),
    Salary FLOAT,
    EmployeeID INTEGER
);



CREATE TABLE EmployeeTerritories (
    EmployeeID INTEGER  ,
    TerritoryID VARCHAR(20)  
);


CREATE TABLE OrderDetails (
    OrderID INTEGER  ,
    ProductID INTEGER  ,
    UnitPrice DECIMAL(10,4)   ,
    Quantity SMALLINT    ,
    Discount DECIMAL(8,0)    
);


CREATE TABLE Orders (
    OrderID INTEGER,
    CustomerID VARCHAR(5),
    EmployeeID INTEGER,
    OrderDate TIMESTAMP,
    RequiredDate TIMESTAMP,
    ShippedDate TIMESTAMP,
    ShipVia INTEGER,
    Freight DECIMAL(10,4),
    ShipName VARCHAR(40),
    ShipAddress VARCHAR(60),
    ShipCity VARCHAR(15),
    ShipRegion VARCHAR(15),
    ShipPostalCode VARCHAR(10),
    ShipCountry VARCHAR(15)
);


CREATE TABLE Products (
    ProductID INTEGER,
    ProductName VARCHAR(40)  ,
    SupplierID INTEGER,
    CategoryID INTEGER,
    QuantityPerUnit VARCHAR(20),
    UnitPrice DECIMAL(10,4),
    UnitsInStock SMALLINT ,
    UnitsOnOrder SMALLINT,
    ReorderLevel SMALLINT ,
    Discontinued BINARY 
);



CREATE TABLE Region (
    RegionID INTEGER  ,
    RegionDescription VARCHAR(52) 
);


CREATE TABLE Shippers (
    ShipperID INTEGER,
    CompanyName VARCHAR(40)  ,
    Phone VARCHAR(24)
);


CREATE TABLE Suppliers (
    SupplierID INTEGER,
    CompanyName VARCHAR(40)  ,
    ContactName VARCHAR(30),
    ContactTitle VARCHAR(30),
    Address VARCHAR(60),
    City VARCHAR(15),
    Region VARCHAR(15),
    PostalCode VARCHAR(10),
    Country VARCHAR(15),
    Phone VARCHAR(24),
    Fax VARCHAR(24),
    HomePage VARCHAR
);


CREATE TABLE Territories (
    TerritoryID VARCHAR(20)  ,
    TerritoryDescription VARCHAR(50)  ,
    RegionID INTEGER 
);

load data local inpath '/docker-entrypoint-initdb.d/data/categories.csv' overwrite into table categories;
load data local inpath '/docker-entrypoint-initdb.d/data/customercustomerdemo.csv' overwrite into table customercustomerdemo;
load data local inpath '/docker-entrypoint-initdb.d/data/customerdemographics.csv' overwrite into table customerdemographics;
load data local inpath '/docker-entrypoint-initdb.d/data/customers.csv' overwrite into table customers;
load data local inpath '/docker-entrypoint-initdb.d/data/employees.csv' overwrite into table employees;
load data local inpath '/docker-entrypoint-initdb.d/data/employeeterritories.csv' overwrite into table employeeterritories;
load data local inpath '/docker-entrypoint-initdb.d/data/orderdetails.csv' overwrite into table orderdetails;
load data local inpath '/docker-entrypoint-initdb.d/data/orders.csv' overwrite into table orders;
load data local inpath '/docker-entrypoint-initdb.d/data/products.csv' overwrite into table products;
load data local inpath '/docker-entrypoint-initdb.d/data/region.csv' overwrite into table region;
load data local inpath '/docker-entrypoint-initdb.d/data/shippers.csv' overwrite into table shippers;
load data local inpath '/docker-entrypoint-initdb.d/data/suppliers.csv' overwrite into table suppliers;
load data local inpath '/docker-entrypoint-initdb.d/data/territories.csv' overwrite into table territories;




