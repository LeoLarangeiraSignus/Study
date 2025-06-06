-- Create a new table called 'Customers' in schema 'sales'
-- Drop the table if it already exists
IF OBJECT_ID('sales.customers', 'U') IS NOT NULL
DROP TABLE sales.customers
GO

-- SQL Server sample database BikeStores

-- Create the table in the specified schema
CREATE TABLE sales.customers
(
    customersId INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
    first_name [NVARCHAR](50) NOT NULL,
    last_name [NVARCHAR](50) NOT NULL,
    phone [NVARCHAR](11) NOT NULL,
    email [NVARCHAR](50) NOT NULL,
    street [NVARCHAR](50) NOT NULL,
    city [NVARCHAR](50) NOT NULL,
    state [NVARCHAR](25) NOT NULL,
    zip_code [NVARCHAR](5) NOT NULL
);
GO

-- STORES TABLE
IF OBJECT_ID('sales.stores', 'U') IS NOT NULL
DROP TABLE sales.stores
GO
-- Crete the table using the store schema
CREATE TABLE sales.stores(
    store_id INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
    store_name [NVARCHAR](50) NOT NULL,
    phone [NVARCHAR](11),
    email [NVARCHAR](50),
    street [NVARCHAR](50),
    city [NVARCHAR](50),
    state [NVARCHAR](25),
    zip_code [NVARCHAR](5)
)
GO

-- STAFF 

IF OBJECT_ID('sales.staff', 'U') IS NOT NULL
DROP TABLE sales.staff
GO

CREATE TABLE sales.staff(
    staff_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
)

