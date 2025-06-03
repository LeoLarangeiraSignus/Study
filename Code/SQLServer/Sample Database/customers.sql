-- Create a new table called 'Customers' in schema 'sales'
-- Drop the table if it already exists
IF OBJECT_ID('sales.Customers', 'U') IS NOT NULL
DROP TABLE sales.Customers
GO
-- Create the table in the specified schema
CREATE TABLE sales.Customers
(
    CustomersId INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
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

